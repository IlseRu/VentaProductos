/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.controller.proveedor;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.utez.modelo.proveedor.BeanProveedor;
import com.utez.modelo.proveedor.DaoProveedor;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class proveedorAction {

    private BeanProveedor bean = new BeanProveedor();
    private DaoProveedor dao = new DaoProveedor();
    private List<BeanProveedor> lista = new ArrayList<>();

    public BeanProveedor getBean() {
        return bean;
    }

    public void setBean(BeanProveedor bean) {
        this.bean = bean;
    }

    public List<BeanProveedor> getLista() {
        return lista;
    }

    public void setLista(List<BeanProveedor> lista) {
        this.lista = lista;
    }

    public String agregarProveedor() {
        if (dao.agregarProveedor(bean)) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String consultarProveedor() {
        lista = dao.consultarProveedor();
        return SUCCESS;
    }

    public String consultarProveedorEspecifica() {
        bean = dao.consultarProveedorEspecifica(bean.getIdProveedor());
        if (bean != null) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String modificarProveedor() {
        if (dao.modificarProveedor(bean)) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String eliminarProveedor() {
        if (dao.eliminarProveedor(bean.getIdProveedor())) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

}
