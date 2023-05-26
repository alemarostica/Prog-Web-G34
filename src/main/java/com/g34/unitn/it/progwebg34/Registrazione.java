package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;


@WebServlet(name = "Registrazione", value = "/registrazione")
public class Registrazione extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //forward alla jsp con il form della registrazione
        request.getRequestDispatcher("WEB-INF/registrazione.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        //prelievo dei parametri dal body della richiesta
        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String dataNascita = request.getParameter("dataNascita");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String tmp = request.getParameter("tipoRegistrazione");
        int tipoRegistrazione = Integer.parseInt(request.getParameter("tipoRegistrazione"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String ripetiPassword = request.getParameter("ripetiPassword");


        //eseguire controlli sui dati anche lato server?

        //COLLEGAMENTO AL DATABASE
        String url = "jdbc:derby://localhost:1527/Tum4WorldDB34";

        try {
            //caricamento driver
            Class.forName("org.apache.derby.jdbc.ClientDriver");

            //apertura connessione al database
            Connection con = DriverManager.getConnection(url);

            //preparazione statement
            String query = "INSERT INTO Iscritto (Username,Password,Nome,Cognome,DataNascita,Email,Telefono,Tipologia) VALUES (?,?,?,?,?,?,?,?)";

            PreparedStatement s = con.prepareStatement(query);
            s.setString(1, username);
            s.setString(2, password);
            s.setString(3, nome);
            s.setString(4, cognome);
            s.setString(5, dataNascita);
            s.setString(6, email);
            s.setString(7, telefono);
            s.setInt(8, tipoRegistrazione);

            //invio statement
            s.executeUpdate();

            //chiusura connessione
            con.close();

            //portare alla pagina di conferma della registrazione
            NameBean nameBean = new NameBean();
            nameBean.setNome(nome);
            request.setAttribute("nameBean", nameBean);
            request.getRequestDispatcher("WEB-INF/registrazioneConfermata.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}