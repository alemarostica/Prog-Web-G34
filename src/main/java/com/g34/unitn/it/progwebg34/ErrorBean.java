package com.g34.unitn.it.progwebg34;

import java.io.Serializable;

public class ErrorBean implements Serializable {
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
