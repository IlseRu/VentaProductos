/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.controller.Anaquel;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.utez.modelo.Anaquel.BeanAnaquel;
import com.utez.modelo.Anaquel.DaoAnaquel;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class anaquelAction {

    private BeanAnaquel bean = new BeanAnaquel();
    private final DaoAnaquel dao = new DaoAnaquel();
    private List<BeanAnaquel> lista = new ArrayList<>();

    public BeanAnaquel getBean() {
        return bean;
    }

    public void setBean(BeanAnaquel bean) {
        this.bean = bean;
    }

    public List<BeanAnaquel> getLista() {
        return lista;
    }

    public void setLista(List<BeanAnaquel> lista) {
        this.lista = lista;
    }

    public String consultarAnaquel() {
        lista = dao.consultaAnaquel();
        return SUCCESS;
    }

    public String agregarAnaquel() {
        if (dao.agregarAnaquel(bean)) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String eliminarAnaquel() {
        if (dao.eliminarAnaquel(bean.getIdAnaquel())) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String consultaEspecificaAnaquel() {
        bean = dao.consultaAnaquelEspecifica(bean.getIdAnaquel());
        if (bean != null) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String modificarAnaquel() {
        if (dao.modificarAnaquel(bean)) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
}
