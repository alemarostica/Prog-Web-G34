package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.util.*;

@WebServlet(name = "contatti", value = "/contatti")
public class Contatti extends HttpServletDB {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ContatoreVisite.incrementa("contatti.jsp");
        request.getRequestDispatcher("WEB-INF/contatti.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        //simulare invio email
        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String email = request.getParameter("email");
        String motivo = request.getParameter("motivo");
        String testo = request.getParameter("msg");

        //inviaEmail(nome, cognome, email, motivo, testo);
        System.out.println("Nome e cognome: "+nome+" "+cognome);
        System.out.println("Email: "+email);
        System.out.println("Motivo: "+motivo);
        System.out.println("Testo: "+testo);

        //portare alla pagina invio confermato
        NameBean nameBean = new NameBean();
        nameBean.setNome(nome);
        request.setAttribute("nameBean", nameBean);
        ContatoreVisite.incrementa("invioConfermato.jsp");
        request.getRequestDispatcher("WEB-INF/invioConfermato.jsp").forward(request,response);
    }

    public void inviaEmail(String nome, String cognome, String mittente, String oggetto, String testo) {
        // Dati fittizi della mail dell'associazione
        final String username = "tum4world@nessunonoluogonoesiste.com";

        // Proprietà per la sessione di posta
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.example.com");
            props.put("mail.smtp.port", "25");

        /*try {
            Session session = Session.getDefaultInstance(props);
            // Crea un oggetto MimeMessage
            Message message = new MimeMessage(session);

            // Imposta il mittente, il destinatario, l'oggetto e il testo del messaggio
            //message.setFrom(new InternetAddress(mittente));
            //message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(username));
            //message.setSubject(nome + " " + cognome + " - " + oggetto);
            //message.setText(testo);


            // Invia il messaggio
            Transport.send(message);
        } catch (Exception e) {
        } */
    }

}