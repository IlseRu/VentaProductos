package mx.utez.modelo.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.utez.modelo.usuario.DaoLogin;
import com.utez.utilerias.Mail;

public class ActionRecuperacion extends ActionSupport {

    private String correoRecuperacion;

    public String recuperacionContrasenia() {
        DaoLogin daoLogin = new DaoLogin();
        String contrasenia = daoLogin.recuperarContrasenia(correoRecuperacion);
        String contraseniaAdministrador= daoLogin.recuperarContraseniaAdministrador(correoRecuperacion);
        if (!contrasenia.equals("")) {
            new Mail().enviarCorreoRecuperacion(correoRecuperacion, contrasenia);
        }else{
            new Mail().enviarCorreoRecuperacion(correoRecuperacion, contraseniaAdministrador);
        }
        return SUCCESS;
    }

    public String getCorreoRecuperacion() {
        return correoRecuperacion;
    }

    public void setCorreoRecuperacion(String correoRecuperacion) {
        this.correoRecuperacion = correoRecuperacion;
    }
}
