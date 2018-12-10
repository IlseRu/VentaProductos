/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.modelo.Anaquel;

import com.utez.utilerias.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class DaoAnaquel {

    private Connection c = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    final private String SQL_CONSULTAR_ANAQUEL = "SELECT * FROM anaquel";
    final private String SQL_CONSULTAR_ANAQUEL_ESPECIFICO = "SELECT * FROM anaquel WHERE idAnaquel = ?";
    final private String SQL_AGREGAR_ANAQUEL = "INSERT INTO anaquel (nombre,numeroFilas,numeroColumnas,tipoCarga) VALUES(?,?,?,?)";
    final private String SQL_ELIMINAR_ANAQUEL = "DELETE FROM anaquel WHERE idAnaquel=?;";
    final private String SQL_MODIFICAR_ANAQUEL = "UPDATE anaquel set nombre = ?, numeroFilas = ?, numeroColumnas = ?, tipoCarga=? WHERE idAnaquel = ?";

    public List<BeanAnaquel> consultaAnaquel() {
        List<BeanAnaquel> lista = new ArrayList<>();
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_ANAQUEL);
            rs = ps.executeQuery();
            while (rs.next()) {
                BeanAnaquel p = new BeanAnaquel();
                p.setNombre(rs.getString("nombre"));
                p.setNumeroColumnas(rs.getInt("numeroFilas"));
                p.setNumeroColumnas(rs.getInt("numeroColumnas"));
                p.setTipoCarga(rs.getString("tipoCarga"));                  
                lista.add(p);
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método consultaAnaquel() " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones de consultaAnaquel() " + e.getMessage());
            }
        }
        return lista;
    }

    public BeanAnaquel consultaAnaquelEspecifica(int idAnaquel) {
        BeanAnaquel p = null;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_ANAQUEL_ESPECIFICO);
            ps.setInt(1, idAnaquel);
            rs = ps.executeQuery();
            if (rs.next()) {
                p = new BeanAnaquel();
                p.setIdAnaquel(rs.getInt("idAnaquel"));
                p.setNombre(rs.getString("nombre"));
                p.setNumeroColumnas(rs.getInt("numeroFilas"));
                p.setNumeroColumnas(rs.getInt("numeroColumnas"));
                p.setTipoCarga(rs.getString("tipoCarga"));  
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método consultaAnaquelEspecifica() " + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones de consultaAnaquelEspecifica() " + e.getMessage());
            }
        }
        return p;
    }

    public boolean agregarAnaquel(BeanAnaquel bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_AGREGAR_ANAQUEL);
            ps.setString(1, bean.getNombre());
            ps.setInt(2, bean.getNumeroFilas());
            ps.setInt(3, bean.getNumeroColumnas());
            ps.setString(3, bean.getTipoCarga());
            resu = ps.executeUpdate() == 1;
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método agregarAnaquel() " + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones agregarAnaquel() " + e.getMessage());
            }
        }
        return resu;
    }

    public boolean eliminarAnaquel(int idAnaquel) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_ELIMINAR_ANAQUEL);
            ps.setInt(1, idAnaquel);
            resu = ps.executeUpdate() == 1;
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método eliminarAnaquel() " + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones eliminarAnaquel() " + e.getMessage());
            }
        }
        return resu;
    }

    public boolean modificarAnaquel(BeanAnaquel bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_MODIFICAR_ANAQUEL);
            ps.setString(1, bean.getNombre());
            ps.setInt(2, bean.getNumeroFilas());
            ps.setInt(3, bean.getNumeroColumnas());
            ps.setString(4, bean.getTipoCarga());            
            ps.setInt(5, bean.getIdAnaquel());

            resu = ps.executeUpdate() == 1;
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en el método modificarAnaquel() " + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar conexiones modificarAnaquel() " + e.getMessage());
            }
        }
        return resu;
    }
}
