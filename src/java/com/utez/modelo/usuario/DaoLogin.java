package com.utez.modelo.usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.utez.utilerias.Conexion;
import java.sql.SQLException;

public class DaoLogin {

    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;

    private static final String sqlRecuperarContrasena = "SELECT password FROM empleado WHERE correo = ?;";


    public String recuperarContrasenia(String correo) {
        String password = "";
        try {
            conexion = Conexion.obtenerConexion();
            ps = conexion.prepareStatement(sqlRecuperarContrasena);
            ps.setString(1, correo);
            rs = ps.executeQuery();
            while (rs.next()) {
                password = rs.getString("password");
            }
        } catch (SQLException e) {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conexion != null) {
                    conexion.close();
                }
            } catch (SQLException ex) {
            }
        }
        return password;
    }

    private static final String sqlRecuperarContrasenaAdmin = "SELECT password FROM Administrador  WHERE correo = ?;";    
    
    public String recuperarContraseniaAdministrador(String correo) {
        String password = "";
        try {
            conexion = Conexion.obtenerConexion();
            ps = conexion.prepareStatement(sqlRecuperarContrasenaAdmin);
            ps.setString(1, correo);
            rs = ps.executeQuery();
            while (rs.next()) {

                password = rs.getString("password");
            }
         } catch (SQLException e) {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conexion != null) {
                    conexion.close();
                }
            } catch (SQLException ex) {
            }
        }
        return password;
    }
}
