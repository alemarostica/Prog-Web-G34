package com.g34.unitn.it.progwebg34;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.util.*;

@WebServlet(name = "contatti", value = "/contatti")
public class contatti extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println(response.encodeURL("contatti.jsp"));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //simulare invio email
        String nome = req.getParameter("nome");
        String cognome = req.getParameter("cognome");
        String email = req.getParameter("email");
        String motivo = req.getParameter("motivo");
        String testo = req.getParameter("testo");


        //inviaEmail(nome, cognome, mittente, oggetto, testo);
        //portare alla pagina invio confermato
    }

    public void destroy() {
    }

    /*public void inviaEmail(String nome, String cognome, String mittente, String oggetto, String testo) {
        // Dati fittizi della mail dell'associazione
        final String username = "tum4world@indirizzofalso.it";
        final String password = "pwt4w34";

        // Proprietà per la sessione di posta
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // Ottieni una sessione di posta autenticata
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Crea un oggetto MimeMessage
            Message message = new MimeMessage(session);

            // Imposta il mittente, il destinatario, l'oggetto e il testo del messaggio
            message.setFrom(new InternetAddress(mittente));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(destinatario));
            message.setSubject(nome + " " + cognome + " - " + oggetto);
            message.setText(testo);

            // Invia il messaggio
            Transport.send(message);

             PrintWriter out = response.getWriter();
             out.println("<h1> Messaggio inviato con successo </h1>");
        } catch (MessagingException e) {
            System.out.println("Errore durante l'invio dell'e-mail: " + e.getMessage());
        }
    } */

}