package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "Login", value = "/login")
public class Login extends HttpServletDB {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //verifico se l'utente è già loggato oppure no
        if(request.getSession(false) != null && request.getSession(false).getAttribute("user") != null){
            //redirect alla home nel caso l'utente sia già loggato
            response.sendRedirect(response.encodeRedirectURL("index.jsp"));
        }else {
            //forward alla jsp con il form del login
            ContatoreVisite.incrementa("login.jsp");
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        //prelievo dei parametri dal body della richiesta
        String username = request.getParameter("username");
        String password = request.getParameter("password");


        //eseguire controlli sui dati anche lato server?

        try {
            //preparazione statement
            String query = "SELECT * FROM Iscritto WHERE Username=?";
            PreparedStatement s = connection.prepareStatement(query);
            s.setString(1,username);

            ResultSet rs = s.executeQuery();


            //verifico di aver ricevuto i dati dell'utente
            if(!rs.next()){
                //in caso di resultSet vuoto (username inesistente), forward alla pagina di login con errore associato
                ErrorBean errore = new ErrorBean();
                errore.setTitle("34");
                errore.setMessage("Un utente con l'username fornito non esiste");
                request.setAttribute("erroreLogin", errore);

                ContatoreVisite.incrementa("logout.jsp");
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request,response);
            }else {
                //verifico se la password ricevuta dalla richiesta corrisponde a quella ottenuta dal DB
                if (rs.getString("Password").equals(password)) {
                    UserBean uBean = new UserBean();
                    uBean.setUsername(rs.getString("Username"));
                    uBean.setNome(rs.getString("Nome"));
                    uBean.setCognome(rs.getString("Cognome"));
                    uBean.setDataNascita(rs.getDate("DataNascita"));
                    uBean.setEmail(rs.getString("Email"));
                    uBean.setTelefono(rs.getString("Telefono"));
                    uBean.setTipologia(rs.getInt("Tipologia"));

                    request.getSession().setAttribute("user", uBean);
                } else {
                    //in caso di password sbagliata, forward alla pagina di login con errore associato
                    ErrorBean errore = new ErrorBean();
                    errore.setTitle("34");
                    errore.setMessage("Le password non corrispondono.");
                    request.setAttribute("erroreLogin", errore);

                    ContatoreVisite.incrementa("login.jsp");
                    request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
                }
            }

            //redirect all'area privata per concludere la procedura di login
            response.sendRedirect(response.encodeRedirectURL("areaPrivata"));


        } catch (SQLException e) {
            //in caso di errore al collegamento con il database, forward alla pagina di login con errore associato
            ErrorBean errore = new ErrorBean();
            errore.setTitle("34");
            errore.setMessage("Errore nel collegamento con il database.");
            request.setAttribute("erroreLogin", errore);

            e.printStackTrace();

            ContatoreVisite.incrementa("login.jsp");
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request,response);
        }
    }
}