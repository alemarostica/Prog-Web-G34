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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserBean user = (UserBean) request.getSession().getAttribute("user");
        String[] opzioniSelezionate = request.getParameterValues("opzione");
        if (user == null) return;
        if (opzioniSelezionate==null) return;

        String mail = user.getEmail();

        // Crea la tua query di inserimento utilizzando i valori selezionati
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