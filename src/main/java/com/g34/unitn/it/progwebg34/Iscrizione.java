package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import java.sql.*;

@WebServlet(name = "iscrizione", value = "/iscrizione")
public class Iscrizione extends HttpServlet {

    String url = "jdbc:derby://localhost:1527/Tum4WorldDB34";
    Connection connection = null;

    @Override
    public void init() {
        //COLLEGAMENTO AL DATABASE
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connection = DriverManager.getConnection(url);
        } catch (ClassNotFoundException | NullPointerException | SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
        String query = "INSERT INTO ISCRIZIONE (EMAILUTENTE, ATTIVITA, DATA) VALUES (?, ?, ?)";

        //invio query al database
        PreparedStatement s = connection.prepareStatement(query);
        s.setString(1, "test");
        s.setString(2, "2");
        s.setString(3, "2023-06-14");

        s.executeUpdate();

        connection.close();
    } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("WEB-INF/index.jsp");
    }

}