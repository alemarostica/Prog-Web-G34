package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import com.google.gson.Gson;

@WebServlet(name = "VisitePagine", value = "/visitePagine")
public class VisitePagine extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HashMap<String, Integer> contatori = ContatoreVisite.getContatori();

        Gson gson = new Gson();

        //stampo i contatori nella risposta da inviare al client
        PrintWriter out = response.getWriter();
        out.println(gson.toJson(contatori));
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        //prelievo dei parametri dal body della richiesta
        String nomePagina = request.getParameter("reset");

        //resetto il contatore associato alla pagina specificata
        if (nomePagina != null)
            ContatoreVisite.reset(nomePagina);
        else
            ContatoreVisite.reset();
    }
}