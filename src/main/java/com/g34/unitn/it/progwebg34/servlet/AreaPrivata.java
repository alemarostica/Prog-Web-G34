package com.g34.unitn.it.progwebg34.servlet;

import com.g34.unitn.it.progwebg34.beans.AttivitaBean;
import com.g34.unitn.it.progwebg34.beans.UserBean;
import com.g34.unitn.it.progwebg34.classes.ContatoreVisite;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "areaPrivata", value = "/areaPrivata")
public class AreaPrivata extends HttpServletDB {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sessione = request.getSession();
        UserBean user = (UserBean) (sessione.getAttribute("user"));

        //se nessun utente è loggato, viene reindirizzato alla home page
        if (user==null) {
            response.sendRedirect(response.encodeRedirectURL("index.jsp"));
        }else{
            //0 -> simpatizzante, 1 -> aderente, 2 -> amministratore
            if (user.getTipologia()==0 || user.getTipologia()==1) {
                //prelievo dal DB delle attività a cui l'utente è già iscritto per inviarle alla jsp con un AttivitaBean
                String query = "SELECT ATTIVITA FROM ISCRIZIONE WHERE EMAILUTENTE = ?";
                try{
                    PreparedStatement s = connection.prepareStatement(query);
                    s.setString(1, user.getEmail());
                    ResultSet rs = s.executeQuery();

                    while (rs.next()) {
                        request.setAttribute("iscrizione"+rs.getString("ATTIVITA"), new AttivitaBean(true));
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            //in base alla tipologia di utente viene eseguito il forward alla jsp corrispondente
            switch (user.getTipologia()) {
                case 0:
                    ContatoreVisite.incrementa("simpatizzante.jsp");
                    request.getRequestDispatcher("WEB-INF/simpatizzante.jsp").forward(request,response);
                    break;
                case 1:
                    ContatoreVisite.incrementa("aderente.jsp");
                    request.getRequestDispatcher("WEB-INF/aderente.jsp").forward(request,response);
                    break;
                case 2:
                    ContatoreVisite.incrementa("areaAmministratore.jsp");
                    request.getRequestDispatcher("WEB-INF/areaAmministratore.jsp").forward(request,response);
                    break;
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
