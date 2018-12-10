/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.modelo.proveedor;

import com.utez.utilerias.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class DaoProveedor {

    private Connection c = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    final private String SQL_AGREGAR_PROVEEDOR = "INSERT INTO proveedor (nombre,direccion,telefono,correo,rfc,descripcion) VALUES (?,?,?,?,?,?) ";
    final private String SQL_CONSULTAR_PROVEEDOR= "SELECT * FROM proveedor; ";
    final private String SQL_ELIMINAR_PROVEEDOR = "DELETE FROM proveedor WHERE idProveedor=?;";
    final private String SQL_MODIFICAR_PROVEEDOR = "UPDATE proveedor SET nombre=?, direccion=?,telefono=?,correo=?,rfc=?,descripcion=? WHERE idProveedor=?";
    final private String SQL_CONSULTA_ESPECIFICA_PROVEEDOR = "SELECT * FROM proveedor WHERE idProveedor=?";

    public List<BeanProveedor> consultarProveedor() {
        List<BeanProveedor> lista = new ArrayList<>();
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_PROVEEDOR);
            rs = ps.executeQuery();
            while (rs.next()) {
                BeanProveedor provee = new BeanProveedor();
                provee.setNombre(rs.getString("nombre"));
                provee.setDireccion(rs.getString("direccion"));
                provee.setTelefono(rs.getString("telefono"));
                provee.setCorreo(rs.getString("correo"));     
                provee.setRfc(rs.getString("rfc"));
                provee.setDescripcion(rs.getString("descripcion"));   
                lista.add(provee);
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el metodo consultarProveedor() " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexciones consultarProveedor() " + e.getMessage());
            }
        }
        return lista;
    }

    public BeanProveedor consultarProveedorEspecifica(int idProveedor) {
        BeanProveedor co = null;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTA_ESPECIFICA_PROVEEDOR);
            ps.setInt(1, idProveedor);
            rs = ps.executeQuery();
            if (rs.next()) {
                co = new BeanProveedor();
                co.setIdProveedor(rs.getInt("idProveedor"));
                co.setNombre(rs.getString("nombre"));
                co.setDireccion(rs.getString("direccion"));
                co.setTelefono(rs.getString("telefono"));
                co.setCorreo(rs.getString("correo"));     
                co.setRfc(rs.getString("rfc"));
                co.setDescripcion(rs.getString("descripcion"));                
            }
            rs.close();
            ps.close();
            c.close();
        } catch (SQLException e) {
            System.out.println("Error en el metodo consultarProveedorEspecifica() " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar las conexiones consultarProveedorEspecifica() " + e.getMessage());
            }
        }
        return co;
    }

    public boolean agregarProveedor(BeanProveedor bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_AGREGAR_PROVEEDOR);
            ps.setString(1, bean.getNombre());
            ps.setString(2, bean.getDireccion());
            ps.setString(3, bean.getTelefono());
            ps.setString(4, bean.getCorreo());
            ps.setString(5, bean.getRfc());
            ps.setString(6, bean.getDescripcion());      
            resu = ps.executeUpdate() == 1;

            ps.close();
            c.close();
        } catch (SQLException e) {
            System.out.println("Error en el método agregarProveedor()" + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar las conexiones de agregarProveedor()" + e.getMessage());
            }
        }
        return resu;
    }

    public boolean eliminarProveedor(int idProveedor) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_ELIMINAR_PROVEEDOR);
            ps.setInt(1, idProveedor);
            resu = ps.executeUpdate() == 1;

            ps.close();
            c.close();
        } catch (SQLException e) {
            System.out.println("Error en el método eliminarProveedor()" + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar las conexiones de eliminarProveedor()" + e.getMessage());
            }
        }
        return resu;
    }

    public boolean modificarProveedor(BeanProveedor bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_MODIFICAR_PROVEEDOR);
            ps.setString(1, bean.getNombre());
            ps.setString(2, bean.getDireccion());
            ps.setString(3, bean.getTelefono());
            ps.setString(4, bean.getCorreo());
            ps.setString(5, bean.getRfc());
            ps.setString(6, bean.getDescripcion());            
            resu = ps.executeUpdate() == 1;
            ps.close();
            c.close();
        } catch (SQLException e) {
            System.out.println("Error en el método modificarProveedor()" + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar las conexiones de modificarProveedor()" + e.getMessage());
            }
        }
        return resu;
    }
}
