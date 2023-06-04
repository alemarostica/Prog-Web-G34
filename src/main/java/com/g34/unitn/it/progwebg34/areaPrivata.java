package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "areaPrivata", value = "/areaPrivata")
public class areaPrivata extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sessione = request.getSession();
        UserBean user = (UserBean) (sessione.getAttribute("user"));

        if (user==null) {
            response.sendRedirect(response.encodeRedirectURL("index.jsp"));
        }else{
            //0 -> simpatizzante, 1 -> aderente, 2 -> amministratore
            switch (user.getTipologia()) {
                case 0:
                    //redirect temporaneo in assenza di pagina
                    response.sendRedirect(response.encodeRedirectURL("index.jsp"));
                    break;
                case 1:
                    //redirect temporaneo in assenza di pagina
                    response.sendRedirect(response.encodeRedirectURL("index.jsp"));
                    break;
                case 2:
                    ContatoreVisite.incrementa("areaAmministratore.jsp");
                    request.getRequestDispatcher("WEB-INF/areaAmministratore.jsp").forward(request,response);
                    break;
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
