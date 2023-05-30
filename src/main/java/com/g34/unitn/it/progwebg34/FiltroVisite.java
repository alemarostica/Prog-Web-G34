package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "FiltroVisite")
public class FiltroVisite implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        String nomePagina = ((HttpServletRequest)request).getRequestURL().toString();
        ContatoreVisite.incrementa(nomePagina);
        System.out.println("Visited: "+nomePagina);
        chain.doFilter(request, response);
    }
}
