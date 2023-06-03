package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

@WebServlet(name = "ListaUtenti", value = "/listaUtenti")
public class ListaUtenti extends HttpServlet {
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
        //prelevo dalla richiesta la tipologia di utenti da restituire
        String tipologia = request.getParameter("tipologia");

        //scelta della query in base alla tipologia richiesta
        String query = "";
        if(tipologia == null || tipologia.equals("all")){
            query = "SELECT * FROM Iscritto";                       //tutti gli utenti
        }else if(tipologia.equals("simpatizzanti")){
            query = "SELECT * FROM Iscritto WHERE Tipologia = 0";   //i simpatizzanti
        }else if(tipologia.equals("aderenti")){
            query = "SELECT * FROM Iscritto WHERE Tipologia = 1";   //gli aderenti
        }else{
            //se il parametro in input assume altri valori (non validi), non restituisco nulla
            query = "SELECT * FROM Iscritto WHERE 1 = 0";
        }

        try {
            //invio query al database
            PreparedStatement s = connection.prepareStatement(query);
            ResultSet rs = s.executeQuery();

            //imposto le proprietà della risposta
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");

            //man mano che viene letto il ResultSet, creo un bean per l'utente e lo aggiungo all'array json
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