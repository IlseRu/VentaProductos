/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.controller.producto;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.utez.modelo.Anaquel.BeanAnaquel;
import com.utez.modelo.Anaquel.DaoAnaquel;
import com.utez.modelo.producto.BeanProducto;
import com.utez.modelo.producto.DaoProducto;
import com.utez.modelo.proveedor.BeanProveedor;
import com.utez.modelo.proveedor.DaoProveedor;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lHp
 */
public class productoAction {

    private BeanProducto bean = new BeanProducto();
    private DaoProducto dao = new DaoProducto();
    private List<BeanProducto> lista = new ArrayList<>();
    private List<BeanAnaquel> listaA = new ArrayList<>();
    private List<BeanProveedor> listaP = new ArrayList<>();

    public BeanProducto getBean() {
        return bean;
    }

    public void setBean(BeanProducto bean) {
        this.bean = bean;
    }

    public DaoProducto getDao() {
        return dao;
    }

    public void setDao(DaoProducto dao) {
        this.dao = dao;
    }

    public List<BeanProducto> getLista() {
        return lista;
    }

    public void setLista(List<BeanProducto> lista) {
        this.lista = lista;
    }

    public List<BeanAnaquel> getListaA() {
        return listaA;
    }

    public void setListaA(List<BeanAnaquel> listaA) {
        this.listaA = listaA;
    }

    public List<BeanProveedor> getListaP() {
        return listaP;
    }

    public void setListaP(List<BeanProveedor> listaP) {
        this.listaP = listaP;
    }

    public String registroProducto() {
        DaoAnaquel daoA = new DaoAnaquel();
        DaoProveedor daoP = new DaoProveedor();
        listaA = daoA.consultaAnaquel();
        listaP = daoP.consultarProveedor();
        return SUCCESS;
    }

    public String agregarProducto() {
        if (dao.agregarProducto(bean)) {
            return SUCCESS;
        } else {
            return ERROR;
        }

    }

    public String consultarProducto() {
        lista = dao.consultarProducto();
        return SUCCESS;
    }

    public String eliminarProducto() {
        if (dao.eliminarProducto(bean.getIdProducto())) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String consultaEspecificaProducto() {
        DaoAnaquel daoA = new DaoAnaquel();
        DaoProveedor daoP = new DaoProveedor();
        listaA = daoA.consultaAnaquel();
        listaP = daoP.consultarProveedor();
        bean = dao.consultarProductoEspecifico(bean.getIdProducto());
        if (bean != null) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String modificarProducto() {
        if (dao.modificarProducto(bean)) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

}
