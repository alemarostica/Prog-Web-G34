package com.g34.unitn.it.progwebg34.beans;

import java.io.Serializable;

public class AttivitaBean implements Serializable {
    /*
    Questo bean viene utilizzato per comunicare alla jsp dell'area privata
    di simpatizzante e aderente a quali attività l'utente è già iscritto
    */
    private boolean iscritto;
    public AttivitaBean(){
        this(false);
    }
    public AttivitaBean(boolean valore){
        this.iscritto=valore;
    }

    public boolean getIscritto() {
        return iscritto;
    }

    public void setIscritto(boolean iscritto) {
        this.iscritto = iscritto;
    }
}
