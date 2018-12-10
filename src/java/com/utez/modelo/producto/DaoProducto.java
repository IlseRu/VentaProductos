/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.modelo.producto;


import com.utez.modelo.Anaquel.BeanAnaquel;
import com.utez.modelo.proveedor.BeanProveedor;
import com.utez.utilerias.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lfern
 */
public class DaoProducto {

    private Connection c = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    final private String SQL_CONSULTAR_PRODUCTO = "SELECT * FROM producto;";
    final private String SQL_CONSULTAR_PRODUCTO_ESPECIFICO = "SELECT * FROM producto WHERE idProducto=?";
    final private String SQL_AGREGAR_PRODUCTO = "INSERT INTO producto (claveProducto,nombre,precio,existencia,unidadMedida,descripcion,"
            + " proveedor,localizacionAnaquel,fila,columna) \n"
            + "  VALUES(?,?,?,?,?,?,?,?,?,?)";
    final private String SQL_ELIMINAR_PRODUCTO = "DELETE FROM producto WHERE idProducto=?; ";
    final private String SQL_MODIFICAR_PRODUCTO = "UPDATE producto SET claveProducto=? , nombre=?, precio=?,existencia=?,unidadMedida=?,"
            + " descripcion=?, proveedor=?, localizacionAnaquel=?, fila=?, columna=? WHERE idProducto=?; ";

    public List<BeanProducto> consultarProducto() {
        List<BeanProducto> lista = new ArrayList<>();
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_PRODUCTO);
            rs = ps.executeQuery();
            while (rs.next()) {
                BeanProducto g = new BeanProducto();
                g.setIdProducto(rs.getInt("idProducto"));
                g.setClaveProducto(rs.getInt("claveProducto"));
                g.setNombre(rs.getString("nombre"));
                g.setPrecio(rs.getDouble("precio"));
                g.setExistencia(rs.getInt("existencia"));
                g.setUnidadMedida(rs.getString("unidadMedida"));
                g.setDescripcion(rs.getString("descripcion"));

                BeanProveedor p = new BeanProveedor();
                p.setIdProveedor(rs.getInt("idProveedor"));
                p.setNombre(rs.getString("nombre"));
                g.setProveedor(p);

                BeanAnaquel a = new BeanAnaquel();
                a.setIdAnaquel(rs.getInt("idAnaquel"));
                a.setNombre(rs.getString("nombre"));
                g.setAnaquel(a);
                g.setFila(rs.getString("fila"));
                g.setColumna(rs.getString("columna"));

                lista.add(g);
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método consultarProducto() " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones consultarProducto() " + e.getMessage());
            }
        }
        return lista;
    }

    public BeanProducto consultarProductoEspecifico(int idProducto) {
        BeanProducto g = null;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_PRODUCTO_ESPECIFICO);
            ps.setInt(1, idProducto);
            rs = ps.executeQuery();
            if (rs.next()) {
                g = new BeanProducto();
                g.setIdProducto(rs.getInt("idProducto"));
                g.setClaveProducto(rs.getInt("claveProducto"));
                g.setNombre(rs.getString("nombre"));
                g.setPrecio(rs.getDouble("precio"));
                g.setExistencia(rs.getInt("existencia"));
                g.setUnidadMedida(rs.getString("unidadMedida"));
                g.setDescripcion(rs.getString("descripcion"));

                BeanProveedor p = new BeanProveedor();
                p.setIdProveedor(rs.getInt("idProveedor"));
                p.setNombre(rs.getString("nombre"));
                g.setProveedor(p);

                BeanAnaquel a = new BeanAnaquel();
                a.setIdAnaquel(rs.getInt("idAnaquel"));
                a.setNombre(rs.getString("nombre"));
                g.setAnaquel(a);
                g.setFila(rs.getString("fila"));
                g.setColumna(rs.getString("columna"));

            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método consultarProductoEspecifico() " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones consultarProductoEspecifico() " + e.getMessage());
            }
        }
        return g;
    }

    public boolean agregarProducto(BeanProducto bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_AGREGAR_PRODUCTO);
            ps.setInt(1, bean.getClaveProducto());
            ps.setString(2, bean.getNombre());
            ps.setDouble(3, bean.getPrecio());
            ps.setInt(4, bean.getExistencia());
            ps.setString(5, bean.getUnidadMedida());
            ps.setString(6, bean.getDescripcion());
            ps.setInt(7, bean.getProveedor().getIdProveedor());
            ps.setInt(8, bean.getAnaquel().getIdAnaquel());
            ps.setString(9, bean.getFila());
            ps.setString(10, bean.getColumna());

            resu = ps.executeUpdate() == 1;

            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método agregarProducto() " + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones agregarProducto() " + e.getMessage());
            }
        }
        return resu;
    }

    public boolean eliminarProducto(int idProducto) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_ELIMINAR_PRODUCTO);
            ps.setInt(1, idProducto);
            resu = ps.executeUpdate() == 1;

            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método eliminarProducto() " + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones eliminarProducto() " + e.getMessage());
            }
        }
        return resu;
    }

    public boolean modificarProducto(BeanProducto bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_MODIFICAR_PRODUCTO);
            ps.setInt(1, bean.getClaveProducto());
            ps.setString(2, bean.getNombre());
            ps.setDouble(3, bean.getPrecio());
            ps.setInt(4, bean.getExistencia());
            ps.setString(5, bean.getUnidadMedida());
            ps.setString(6, bean.getDescripcion());
            ps.setInt(7, bean.getProveedor().getIdProveedor());
            ps.setInt(8, bean.getAnaquel().getIdAnaquel());
            ps.setString(9, bean.getFila());
            ps.setString(10, bean.getColumna());
            ps.setInt(11, bean.getIdProducto());
            resu = ps.executeUpdate() == 1;
        } catch (Exception e) {
            System.out.println("Error en el método modificarProducto() " + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones modificarProducto() " + e.getMessage());
            }
        }
        return resu;
    }
}
