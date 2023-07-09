package com.g34.unitn.it.progwebg34.beans;

public class NameBean implements java.io.Serializable{
    private String nome;
    public NameBean() {
        this.nome = "";
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return nome;
    }
}
