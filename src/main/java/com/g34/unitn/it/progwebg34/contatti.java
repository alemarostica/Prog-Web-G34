package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "contatti", value = "/contatti")
public class contatti extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/contatti.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //simulare invio email
        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String email = request.getParameter("email");
        String motivo = request.getParameter("motivo");
        String testo = request.getParameter("msg");

        //inviaEmail(nome, cognome, mittente, oggetto, testo);
        System.out.println("Nome e cognome: "+nome+" "+cognome);
        System.out.println("Email: "+email);
        System.out.println("Motivo: "+motivo);
        System.out.println("Testo: "+testo);

        //portare alla pagina invio confermato
        NameBean nameBean = new NameBean();
        nameBean.setNome(nome);
        request.setAttribute("nameBean", nameBean);
        request.getRequestDispatcher("WEB-INF/invioConfermato.jsp").forward(request,response);
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