/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.modelo.empleado;

import com.utez.utilerias.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lHp
 */
public class DaoEmpleado {

    private Connection c = null;
    private PreparedStatement ps = null;
    private ResultSet rs;

    final private String SQL_CONSULTAR_EMPLEADO = "SELECT * FROM empleado";
    final private String SQL_AGREGAR_EMPLEADO = "INSERT INTO empleado (usuario,password,correo,numeroTrabajador,nombre,apellidos,fechaNacimiento,domicilio,telefono,tipoSangre,sexo,fechaContratacion,rfc,salarioHora) "
            + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    final private String SQL_ELIMINAR_EMPLEADO = "DELETE FROM empleado WHERE idEmpleado = ?";
    final private String SQL_CONSULTA_ESPECIFICA_EMPLEADO = "SELECT * FROM empleado WHERE idEmpleado = ?";

    public List<BeanEmpleado> consultarEmpleado() {
        List<BeanEmpleado> lista = new ArrayList<>();
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTAR_EMPLEADO);
            rs = ps.executeQuery();
            while (rs.next()) {
                BeanEmpleado bean = new BeanEmpleado();
                bean.setIdEmpleado(rs.getInt("idEmpleado"));
                bean.setUsuario(rs.getString("usuario"));
                bean.setPassword(rs.getString("password"));
                bean.setCorreo(rs.getString("correo"));
                bean.setNumeroTrabajador(rs.getInt("numeroTrabajador"));
                bean.setNombre(rs.getString("nombre"));
                bean.setApellidos(rs.getString("apellidos"));
                bean.setFechaNacimiento(rs.getString("fechaNacimiento"));
                bean.setDomicilio(rs.getString("domicilio"));
                bean.setTelefono(rs.getString("telefono"));
                bean.setTipoSangre(rs.getString("tipoSangre"));
                bean.setSexo(rs.getString("sexo"));
                bean.setFechaContratacion(rs.getString("fechaContratacion"));
                bean.setRfc(rs.getString("rfc"));
                bean.setSalarioHora(rs.getDouble("salarioHora"));
                lista.add(bean);
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en método consultarDivision()" + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexiones del método consultarDivision()" + e.getMessage());
            }
        }
        return lista;
    }

    public BeanEmpleado consultarEmpleadoEspecifica(int idEmpleado) {
        BeanEmpleado bean = null;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_CONSULTA_ESPECIFICA_EMPLEADO);
            ps.setInt(1, idEmpleado);
            rs = ps.executeQuery();

            if (rs.next()) {
                bean = new BeanEmpleado();
                bean.setIdEmpleado(rs.getInt("idEmpleado"));
                bean.setUsuario(rs.getString("usuario"));
                bean.setPassword(rs.getString("password"));
                bean.setCorreo(rs.getString("correo"));
                bean.setNumeroTrabajador(rs.getInt("numeroTrabajador"));
                bean.setNombre(rs.getString("nombre"));
                bean.setApellidos(rs.getString("apellidos"));
                bean.setFechaNacimiento(rs.getString("fechaNacimiento"));
                bean.setDomicilio(rs.getString("domicilio"));
                bean.setTelefono(rs.getString("telefono"));
                bean.setTipoSangre(rs.getString("tipoSangre"));
                bean.setSexo(rs.getString("sexo"));
                bean.setFechaContratacion(rs.getString("fechaContratacion"));
                bean.setRfc(rs.getString("rfc"));
                bean.setSalarioHora(rs.getDouble("salarioHora"));
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en método consultarEmpleadoEspecifica()" + e.getMessage());
        } finally {
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexiones del método consultarEmpleadoEspecifica()" + e.getMessage());
            }
        }
        return bean;
    }

    public boolean registrarEmpleado(BeanEmpleado bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_AGREGAR_EMPLEADO);
            ps.setString(1, bean.getUsuario());
            ps.setString(2, bean.getPassword());
            ps.setString(3, bean.getCorreo());
            ps.setInt(4, bean.getNumeroTrabajador());
            ps.setString(5, bean.getNombre());
            ps.setString(6, bean.getApellidos());
            ps.setString(7, bean.getFechaNacimiento());
            ps.setString(8, bean.getDomicilio());
            ps.setString(9, bean.getTelefono());
            ps.setString(10, bean.getTipoSangre());
            ps.setString(11, bean.getSexo());
            ps.setString(12, bean.getFechaContratacion());
            ps.setString(13, bean.getRfc());
            ps.setDouble(14, bean.getSalarioHora());
            resu = ps.executeUpdate() == 1;
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en método registrarEmpleado()" + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexiones del método registrarEmpleado()" + e.getMessage());
            }
        }
        return resu;
    }

    public boolean eliminarEmpleado(int idEmpleado) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_ELIMINAR_EMPLEADO);
            ps.setInt(1, idEmpleado);
            resu = ps.executeUpdate() == 1;
            ps.close();
            c.close();
        } catch (SQLException e) {
            System.out.println("Error en método eliminarEmpleado()" + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (SQLException e) {
                System.out.println("Error al cerrar las conexiones del método eliminarEmpleado()" + e.getMessage());
            }
        }
        return resu;
    }
    final private String SQL_MODIFICAR_EMPLEADO
            = "UPDATE empleado SET usuario = ?, password = ?,correo=?,numeroTrabajador=?,nombre=?,apellidos=?,fechaNacimiento=?,domicilio=?,telefono=?,tipoSangre=?,sexo=?,fechaContratacion=?,rfc=?,salarioHora=?  WHERE idEmpleado = ?";

    public boolean modificarEmpleado(BeanEmpleado bean) {
        boolean resu = false;
        try {
            c = Conexion.obtenerConexion();
            ps = c.prepareStatement(SQL_MODIFICAR_EMPLEADO);
            ps.setString(1, bean.getUsuario());
            ps.setString(2, bean.getPassword());
            ps.setString(3, bean.getCorreo());
            ps.setInt(4, bean.getNumeroTrabajador());
            ps.setString(5, bean.getNombre());
            ps.setString(6, bean.getApellidos());
            ps.setString(7, bean.getFechaNacimiento());
            ps.setString(8, bean.getDomicilio());
            ps.setString(9, bean.getTelefono());
            ps.setString(10, bean.getTipoSangre());
            ps.setString(11, bean.getSexo());
            ps.setString(12, bean.getFechaContratacion());
            ps.setString(13, bean.getRfc());
            ps.setDouble(14, bean.getSalarioHora());
            ps.setInt(15, bean.getIdEmpleado());

            resu = ps.executeUpdate() == 1;
            ps.close();
            c.close();
        } catch (Exception e) {
            System.out.println("Error en método modificarEmpleado()" + e.getMessage());
        } finally {
            try {
                ps.close();
                c.close();
            } catch (Exception e) {
                System.out.println("Error al cerrar las conexiones del método modificarEmpleado()" + e.getMessage());
            }
        }
        return resu;
    }
}
