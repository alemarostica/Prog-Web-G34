<%@ page import="com.g34.unitn.it.progwebg34.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: rober
  Date: 06/06/2023
  Time: 16.32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <%@ include file="componenti/head.html"%>
        <script src="js/userScripts.js"></script>
        <link rel="stylesheet" href="css/aderente.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/table.css"/>
    </head>

    <body>
    <%@ include file="componenti/navBar.jsp"%>
        <div class="container">
            <%@ include file="componenti/users.jsp"%>

            <div class="scheda centered">
                <h3 class="titoloPagina">Aiutaci a sostenere le nostre attività!</h3>
                <form action=<%=response.encodeURL("donazione")%> method="POST">
                    <input type="hidden" name="email" value="<%= user.getEmail() %>">
                    <input type="number" name="donazione" id="donazione"><br/>
                    <div class="buttonContainer"><input type="submit" value="Dona"></div>
                </form>
            </div>

            <%-- TODO: trova una soluzione per le frasi motivazionali che stanno come sheda decentrata --%>
            <%@ include file="componenti/frasiMotivazionali.html"%>
        </div>
    <%@ include file="componenti/Footer.html"%>
    </body>

</html>