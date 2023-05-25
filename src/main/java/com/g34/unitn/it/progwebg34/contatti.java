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
}
