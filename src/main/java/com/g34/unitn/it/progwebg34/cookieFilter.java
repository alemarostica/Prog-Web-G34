package com.g34.unitn.it.progwebg34;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "cookieFilter")
public class cookieFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpServletRequest = (HttpServletRequest)request;

        // se il client ha settato un parametro accettaCookies a true, salva questa preferenza nella sessione
        String accettaCookies = httpServletRequest.getParameter("accettaCookies");
        HttpSession sessione = httpServletRequest.getSession();
        if (accettaCookies != null && accettaCookies.equals("true")) {
            sessione.setAttribute("accettaCookies", true);

            // invia il cookie di sessione manualmente.
            // Questo significa che il parametro <session-duration> in web.xml viene sovrascritto >.< sowwy
            Cookie cookie = new Cookie("JSESSIONID", sessione.getId());
            cookie.setMaxAge(60*30);
            cookie.setHttpOnly(true);
            ((HttpServletResponse)response).addCookie(cookie);
        }

        // processa la richiesta
        chain.doFilter(request, response);

        // se questa sessione non accetta i cookies, togli il cookie JSESSIONID
        if (sessione.getAttribute("accettaCookies") == null || !((Boolean)sessione.getAttribute("accettaCookies")) ) {
            Cookie cookie = new Cookie("JSESSIONID", "");
            cookie.setMaxAge(0);
            ((HttpServletResponse)response).addCookie(cookie);
        }
    }
}
