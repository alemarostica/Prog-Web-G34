package com.g34.unitn.it.progwebg34;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

@WebServlet(name = "Donazione", value = "/donazione")
public class Donazione extends HttpServlet {

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
        String mail = request.getParameter("email");
        String donazione = request.getParameter("donazione");
        int don = Integer.parseInt(donazione);
        StringBuilder test = new StringBuilder("INSERT INTO DONAZIONE (EMAILADERENTE, DATA, VALORE) VALUES ('");
        test.append(mail + "', '");
        test.append(LocalDate.now().toString() + "',");
        test.append(don);
        System.out.println(test);

        try{
            String query = "INSERT INTO DONAZIONE (EMAILADERENTE, DATA, VALORE) VALUES (?, ?, ?)";

            PreparedStatement s = connection.prepareStatement(query);
            s.setString(1, mail);
            s.setString(2, LocalDate.now().toString());
            s.setInt(3, don);
            System.out.println(query);
            s.executeUpdate();
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