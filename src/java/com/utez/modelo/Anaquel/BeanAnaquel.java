/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utez.modelo.Anaquel;

/**
 *
 * @author Hp
 */
public class BeanAnaquel {

    private int idAnaquel;
    private String nombre;
    private int numeroFilas;
    private int numeroColumnas;
    private String tipoCarga;

    public int getIdAnaquel() {
        return idAnaquel;
    }

    public void setIdAnaquel(int idAnaquel) {
        this.idAnaquel = idAnaquel;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNumeroFilas() {
        return numeroFilas;
    }

    public void setNumeroFilas(int numeroFilas) {
        this.numeroFilas = numeroFilas;
    }

    public int getNumeroColumnas() {
        return numeroColumnas;
    }

    public void setNumeroColumnas(int numeroColumnas) {
        this.numeroColumnas = numeroColumnas;
    }

    public String getTipoCarga() {
        return tipoCarga;
    }

    public void setTipoCarga(String tipoCarga) {
        this.tipoCarga = tipoCarga;
    }
    
    
}
