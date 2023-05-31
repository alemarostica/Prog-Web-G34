package com.g34.unitn.it.progwebg34;

import java.util.Date;

public class UserBean {
    private String username;
    private String nome;
    private String cognome;
    private Date dataNascita;
    private String email;
    private String telefono;
    private int tipologia;      //0 -> simpatizzante, 1 -> aderente, 2 -> amministratore

    public UserBean() {
        this.username = "";
        this.nome = "";
        this.cognome = "";
        this.dataNascita = new Date();
        this.email = "";
        this.telefono = "";
        this.tipologia = 0;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public Date getDataNascita() {
        return dataNascita;
    }

    public void setDataNascita(Date dataNascita) {
        this.dataNascita = dataNascita;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getTipologia() {
        return tipologia;
    }

    public void setTipologia(int tipologia) {
        this.tipologia = tipologia;
    }
}
