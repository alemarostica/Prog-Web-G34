package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

@WebServlet(name = "EliminaUtente", value = "/eliminaUtente")
public class EliminaUtente extends HttpServletDB {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserBean utente = (UserBean) request.getSession().getAttribute("user");
        if (utente==null) {
            request.getRequestDispatcher(response.encodeRedirectURL("index.jsp?logout=true")).forward(request,response);
            return;
        }
        String username = utente.getUsername();

        //scelta della query in base alla tipologia richiesta
        String query = "DELETE FROM ISCRITTO WHERE USERNAME = ?";

        try {
            PreparedStatement s = connection.prepareStatement(query);
            s.setString(1,username);
            s.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        //request.getRequestDispatcher(response.encodeRedirectURL("index.jsp?logout=true")).forward(request,response);
        response.sendRedirect(response.encodeRedirectURL("index.jsp?logout=true"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}