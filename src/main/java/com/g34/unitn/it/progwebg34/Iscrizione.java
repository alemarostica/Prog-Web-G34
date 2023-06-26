package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalTime;
import java.sql.*;

@WebServlet(name = "Iscrizione", value = "/iscrizione")
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
        String mail = request.getParameter("email");
        String query = "SELECT ATTIVITA FROM ISCRIZIONE WHERE EMAILUTENTE = '" + mail + "'";

        try{
            PreparedStatement s = connection.prepareStatement(query);
            ResultSet rs = s.executeQuery();

            request.setAttribute("checkboxDisable", rs.toString());
            //RequestDispatcher dispatcher = request.getRequestDispatcher("aderente.jsp");
            //dispatcher.forward(request, response);
            //response.sendRedirect("index.jsp");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mail = request.getParameter("email");
        String[] opzioniSelezionate = request.getParameterValues("opzione");

        // Crea la tua query di inserimento utilizzando i valori selezionati
        StringBuilder query = new StringBuilder("INSERT INTO ISCRIZIONE (EMAILUTENTE, ATTIVITA, DATA) VALUES ('" + mail + "',");
        StringBuilder opz = new StringBuilder("");
        for (int i = 0; i < opzioniSelezionate.length; i++) {
            opz.append(opzioniSelezionate[i]);
        }
        query.append(opz + ", '");
        query.append(LocalDate.now() + "')");
        System.out.println(query);


        try{
        //String query = "INSERT INTO ISCRIZIONE (EMAILUTENTE, ATTIVITA, DATA) VALUES (?, ?, ?)";
        //s.executeUpdate();
            PreparedStatement s = connection.prepareStatement(query.toString());
            s.executeUpdate();
            //response.sendRedirect("index.jsp");

        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("index.jsp");
    }

    @Override
    public void destroy() {
        //CHIUSURA CONNESSIONE
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}