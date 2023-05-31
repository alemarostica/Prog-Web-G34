package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "FiltroLogout")
public class FiltroLogout implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        String logoutParam = httpRequest.getParameter("logout");

        //se nell'url è presente il parametro logout=true, rimuovo il bean dell'utente dalla sessione
        if(logoutParam != null && logoutParam.equals("true")){
            httpRequest.getSession().removeAttribute("user");
        }

        chain.doFilter(request, response);
    }
}