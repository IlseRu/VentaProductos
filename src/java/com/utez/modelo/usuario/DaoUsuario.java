/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.modelo.usuario;
import com.utez.modelo.empleado.BeanEmpleado;
import com.utez.utilerias.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author lfern
 */
public class DaoUsuario {

    private Connection c = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    final private String SQL_CONSULTAR_ALUMNO = "SELECT *  \n"
            + "FROM empleado \n"
            + "where usuario = ? and password = ?";

    final private String SQL_CONSULTAR_ADMIN = "select * from Administrador where usuario = ? and password = ?";

    public BeanEmpleado consultarEmpleadoLogin(BeanUsuario bean) {
        BeanEmpleado e = null;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_ALUMNO);
            ps.setString(1, bean.getUsuario());
            ps.setString(2, bean.getPassword());
            rs = ps.executeQuery();
            if (rs.next()) {
                e = new BeanEmpleado();
                e.setIdEmpleado(rs.getInt("idEmpleado"));
                e.setUsuario(rs.getString("usuario"));
                e.setPassword(rs.getString("password"));
                e.setNumeroTrabajador(rs.getInt("numeroTrabajador"));                
                e.setNombre(rs.getString("nombre"));
                e.setApellidos(rs.getString("apellidos"));
                e.setFechaNacimiento(rs.getString("fechaNacimiento"));
                e.setDomicilio(rs.getString("domicilio"));
                e.setTelefono(rs.getString("telefono"));
                e.setTipoSangre(rs.getString("tipoSangre"));
                e.setSexo(rs.getString("sexo"));
                e.setFechaContratacion(rs.getString("fechaContratacion"));
                e.setRfc(rs.getString("RFC"));
                e.setSalarioHora(rs.getDouble("salarioHora"));
                e.setRol(rs.getInt("rol"));                

            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println("Error en el metodo consultarEmpleadoLogin() " + ex.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception ex) {
                System.out.println("Error al cerrar conexiones consultarEmpleadoLogin() " + ex.getMessage());
            }

        }
        return e;
    }

    public BeanUsuario consultarUsuario(BeanUsuario bean) {
        BeanUsuario u = null;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_ADMIN);
            ps.setString(1, bean.getUsuario());
            ps.setString(2, bean.getPassword());
            rs = ps.executeQuery();
            if (rs.next()) {
                u = new BeanUsuario();
                u.setIdUsuario(rs.getInt("idAdmin"));
                u.setUsuario(rs.getString("usuario"));
                u.setPassword(rs.getString("password"));
                u.setRol(rs.getInt("rol"));
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println("Error en el metodo consultarEstudianteLogin() " + ex.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception ex) {
                System.out.println("Error al cerrar conexiones consultarEstudianteLogin() " + ex.getMessage());
            }
        }
        return u;
    }
}
