package com.g34.unitn.it.progwebg34.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

import com.g34.unitn.it.progwebg34.beans.UserBean;

@WebServlet(name = "EliminaUtente", value = "/eliminaUtente")
public class EliminaUtente extends HttpServletDB {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserBean utente = (UserBean) request.getSession().getAttribute("user");

        //se nessun utente è loggato, viene reindirizato alla home page
        if (utente==null) {
            request.getRequestDispatcher(response.encodeRedirectURL("index.jsp?logout=true")).forward(request,response);
            return;
        }

        //rimozione dell'utente dal database
        String username = utente.getUsername();
        String query = "DELETE FROM ISCRITTO WHERE USERNAME = ?";

        try {
            PreparedStatement s = connection.prepareStatement(query);
            s.setString(1,username);
            s.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }

        //redirect alla home page richiedendo il logout
        response.sendRedirect(response.encodeRedirectURL("index.jsp?logout=true"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}