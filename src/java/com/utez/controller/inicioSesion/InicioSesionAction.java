/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.controller.inicioSesion;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.utez.modelo.empleado.BeanEmpleado;
import com.utez.modelo.usuario.BeanUsuario;
import com.utez.modelo.usuario.DaoUsuario;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author lfern
 */
public class InicioSesionAction extends ActionSupport implements SessionAware {

    private DaoUsuario dao = new DaoUsuario();
    private BeanUsuario bean = new BeanUsuario();
    private BeanEmpleado beanE = new BeanEmpleado();
    private Map session;

    public BeanEmpleado getBeanE() {
        return beanE;
    }

    public void setBeanE(BeanEmpleado beanE) {
        this.beanE = beanE;
    }

    public DaoUsuario getDao() {
        return dao;
    }

    public void setDao(DaoUsuario dao) {
        this.dao = dao;
    }

    public BeanUsuario getBean() {
        return bean;
    }

    public void setBean(BeanUsuario bean) {
        this.bean = bean;
    }

    public Map getSession() {
        return session;
    }

    @Override
    public void setSession(Map session) {
        this.session = session;
    }

    public String iniciarSesion() {
        session = ActionContext.getContext().getSession();
        beanE = dao.consultarEmpleadoLogin(bean);
        bean = dao.consultarUsuario(bean);
        if (beanE != null) {
            session.put("idAlumno", beanE.getIdEmpleado());
            session.put("nombre", (beanE.getNombre() + " " + beanE.getApellidos() ));
            session.put("rol", beanE.getRol());

            return "usuario";
        } else if (bean != null) {
            session.put("rol", bean.getRol());
            session.put("admin", bean.getUsuario());
            return "administrador";
        } else {
            return ERROR;
        }
    }

    public String cerrarSesion() {
        session = ActionContext.getContext().getSession();
        session.clear();
        return SUCCESS;
    }
}
