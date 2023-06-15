package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

@WebServlet(name = "DatiUtente", value = "/datiUtente")
public class DatiUtente extends HttpServlet {
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
        String username = request.getParameter("username");

        //scelta della query in base alla tipologia richiesta
        String query = "SELECT * FROM Iscritto where username ='" + username + "'";

        try {
            //invio query al database
            PreparedStatement s = connection.prepareStatement(query);
            ResultSet rs = s.executeQuery();

            //imposto le proprietà della risposta
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");

            JsonArray array = new JsonArray();
            while (rs.next()) {
                UserBean uBean = new UserBean();

                uBean.setUsername(rs.getString("Username"));
                uBean.setNome(rs.getString("Nome"));
                uBean.setCognome(rs.getString("Cognome"));
                uBean.setDataNascita(rs.getDate("DataNascita"));
                uBean.setEmail(rs.getString("Email"));
                uBean.setTelefono(rs.getString("Telefono"));
                uBean.setTipologia(rs.getInt("Tipologia"));

                Gson gson = new Gson();
                array.add(gson.toJson(uBean));
            }

            //stampo l'array nella risposta da inviare al client
            PrintWriter out = response.getWriter();
            out.println(array);
            out.flush();
        }catch (IOException | SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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