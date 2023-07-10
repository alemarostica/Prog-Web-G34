package com.g34.unitn.it.progwebg34.filters;

import com.g34.unitn.it.progwebg34.classes.ContatoreVisite;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "FiltroVisite")
public class FiltroVisite implements Filter {
    /*
    Questo filtro si occupa di incrementare il contatore delle visite alle pagine jsp.
    */
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        //isolamento del nome della pagina dal resto dell'url
        String[] parti = ((HttpServletRequest)request).getRequestURI().split("/",-1);
        String nomePagina = parti[parti.length-1];
        nomePagina = nomePagina.replaceAll(";jsessionid=.*","");

        //gestione del caso in cui la pagina home sia riferita con ".../" o ".../."
        if (nomePagina.equals("") || nomePagina.equals(".")) nomePagina="index.jsp";

        ContatoreVisite.incrementa(nomePagina);
        chain.doFilter(request, response);
    }
}
