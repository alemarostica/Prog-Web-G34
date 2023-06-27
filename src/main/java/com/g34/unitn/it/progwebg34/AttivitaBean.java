package com.g34.unitn.it.progwebg34;

import java.io.Serializable;

public class AttivitaBean implements Serializable {
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
