package com.g34.unitn.it.progwebg34;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "areaPrivata", value = "/areaPrivata")
public class AreaPrivata extends HttpServlet {
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
                    request.getRequestDispatcher("WEB-INF/simpatizzante.jsp").forward(request,response);
                    break;
                case 1:
                    request.getRequestDispatcher("WEB-INF/aderente.jsp").forward(request,response);
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
