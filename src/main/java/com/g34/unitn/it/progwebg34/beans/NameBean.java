package com.g34.unitn.it.progwebg34.beans;

public class NameBean implements java.io.Serializable{
    /*
    Questo bean viene utilizzato per comunicare alla jsp destinataria il nome dell'utente
    che ha svolto un'operazione (ad esempio l'uso del form contatti)
    */
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
