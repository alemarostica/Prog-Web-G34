package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.HashMap;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

@WebServlet(name = "Donazioni", value = "/donazioni")
public class Donazioni extends HttpServletDB {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //somma tutte le donazioni dell'anno corrente mese per mese
            String query = "SELECT MONTH(Data) AS Mese, SUM(Valore) AS Totale FROM Donazione WHERE YEAR(Data) = YEAR(CURRENT DATE) GROUP BY MONTH(Data)";

            //invio query al database
            PreparedStatement s = connection.prepareStatement(query);
            ResultSet rs = s.executeQuery();

            //imposto le proprietà della risposta
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");

            //creo un hashmap inserendo tutti i mesi con totale 0
            HashMap<Integer, Float> totDonazioni = new HashMap<>();
            for(int i=1; i<=12; i++){
                totDonazioni.put(i, 0.0F);
            }

            //per i mesi presenti nel ResultSet, sostituisco il valore con quello proveniente dal DB
            while (rs.next()) {
                totDonazioni.put(rs.getInt("Mese"), rs.getFloat("Totale"));
            }

            Gson gson = new Gson();

            //stampo l'hashmap nella risposta da inviare al client
            PrintWriter out = response.getWriter();
            out.println(gson.toJson(totDonazioni));
            out.flush();
        }catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO qui si possono ricevere le nuove donazioni?
    }
}