/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.controller.Empleado;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.utez.modelo.empleado.BeanEmpleado;
import com.utez.modelo.empleado.DaoEmpleado;
import java.util.ArrayList;
import java.util.List;
import static java.util.jar.Pack200.Packer.ERROR;

/**
 *
 * @author lfern
 */
public class empleadoAction {

    private BeanEmpleado bean = new BeanEmpleado();
    private DaoEmpleado dao = new DaoEmpleado();
    private List<BeanEmpleado> lista = new ArrayList<>();
    private String mensaje;

    public BeanEmpleado getBean() {
        return bean;
    }

    public void setBean(BeanEmpleado bean) {
        this.bean = bean;
    }

    public List<BeanEmpleado> getLista() {
        return lista;
    }

    public void setLista(List<BeanEmpleado> lista) {
        this.lista = lista;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String registrarEmpleado() {
        boolean resultado = dao.registrarEmpleado(bean);
        if (resultado) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String consultarEmpleado() {
        lista = dao.consultarEmpleado();
        return SUCCESS;
    }

    public String consultarEmpleadoId() {
        bean = dao.consultarEmpleadoEspecifica(bean.getIdEmpleado());
        if (bean != null) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String modificarEmpleado() {
        if (dao.modificarEmpleado(bean)) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String eliminarEmpleado() {
        if (dao.eliminarEmpleado(bean.getIdEmpleado())) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
}
