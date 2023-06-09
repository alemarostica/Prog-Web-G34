package com.g34.unitn.it.progwebg34.servlet;

import com.g34.unitn.it.progwebg34.beans.UserBean;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.sql.*;

@WebServlet(name = "Iscrizione", value = "/iscrizione")
public class Iscrizione extends HttpServletDB {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserBean user = (UserBean) request.getSession().getAttribute("user");
        String[] opzioniSelezionate = request.getParameterValues("opzione");
        if (user == null || opzioniSelezionate==null){
            response.sendRedirect(response.encodeRedirectURL("areaPrivata"));
            return;
        }

        String mail = user.getEmail();

        //creazione della query con i valori ricevuti dal form di iscrizione alle attività
        String query = "INSERT INTO ISCRIZIONE (EMAILUTENTE, ATTIVITA, DATA) VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, mail);
            ps.setString(3, LocalDate.now().toString());
            for (int i = 0; i < opzioniSelezionate.length; i++) {
                ps.setString(2, opzioniSelezionate[i]);
                ps.executeUpdate();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect(response.encodeRedirectURL("areaPrivata"));
    }
}