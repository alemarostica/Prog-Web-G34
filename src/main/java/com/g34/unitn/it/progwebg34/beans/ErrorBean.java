package com.g34.unitn.it.progwebg34.beans;

import java.io.Serializable;

public class ErrorBean implements Serializable {
    /*
    Questo bean viene utilizzato per comunicare eventuali errori di validazione lato server
    delle informazioni specificate nel login/signin alla jsp corrispondente
    */
    private String title;
    private String message;

    public ErrorBean() {
        this.title = "";
        this.message = "";
    }

    public String getTitle() {
        return title;
    }

    public String getMessage() {
        return message;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "title='" + title + '\'' +
                ", message='" + message + '\'';
    }
}
