package com.g34.unitn.it.progwebg34;

import org.apache.derby.shared.common.error.DerbySQLIntegrityConstraintViolationException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Locale;
import java.util.Date;


@WebServlet(name = "Signin", value = "/signin")
public class Signin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //forward alla jsp con il form della registrazione
        request.getRequestDispatcher("WEB-INF/signin.jsp").forward(request, response);
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

            try{
                //invio statement
                s.executeUpdate();
            }catch(DerbySQLIntegrityConstraintViolationException e){
                //in caso di username o email non univoci, forward alla pagina di registrazione con errore associato
                ErrorBean errore = new ErrorBean();
                errore.setTitle("Errore nella procedura di registrazione");
                errore.setMessage("Un utente con questo username o questa email è già registrato.");
                request.setAttribute("erroreRegistrazione", errore);

                request.getRequestDispatcher("WEB-INF/signin.jsp").forward(request,response);
            }

            //chiusura connessione
            con.close();

            //login automatico dell'utente dopo aver svolto la registrazione
            UserBean uBean = new UserBean();
            uBean.setUsername(username);
            uBean.setNome(nome);
            uBean.setCognome(cognome);

            //conversione della data da stringa a oggetto Date
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
            uBean.setDataNascita(format.parse(dataNascita));

            uBean.setEmail(cognome);
            uBean.setTelefono(telefono);
            uBean.setTipologia(tipoRegistrazione);

            request.getSession().setAttribute("user", uBean);

            //portare alla pagina di conferma della registrazione
            NameBean nameBean = new NameBean();
            nameBean.setNome(nome);
            request.setAttribute("nameBean", nameBean);
            request.getRequestDispatcher("WEB-INF/registrazioneConfermata.jsp").forward(request,response);
        } catch (ClassNotFoundException | SQLException e) {
            //in caso di errore al collegamento con il database, forward alla pagina di registrazione con errore associato
            ErrorBean errore = new ErrorBean();
            errore.setTitle("Errore nella procedura di registrazione");
            errore.setMessage("Errore nel collegamento con il database.");
            request.setAttribute("erroreRegistrazione", errore);

            request.getRequestDispatcher("WEB-INF/signin.jsp").forward(request,response);
        } catch (ParseException e) {
            //in caso di errore di conversione della data, forward alla pagina di registrazione con errore associato
            ErrorBean errore = new ErrorBean();
            errore.setTitle("Errore nella procedura di registrazione");
            errore.setMessage("Errore nel processamento dei dati.");
            request.setAttribute("erroreRegistrazione", errore);

            request.getRequestDispatcher("WEB-INF/signin.jsp").forward(request,response);
        }
    }
}