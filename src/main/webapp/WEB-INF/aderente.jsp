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
                <div class="form-center">
                    <form action="<%=response.encodeURL("donazione")%>" method="POST">
                        <input type="hidden" name="email" value="<%= user.getEmail() %>">
                        <input type="number" name="donazione" id="donazione" min="1"> €<br/><br/>
                        <div class="buttonContainer"><input type="submit" value="Dona"></div>
                    </form>
                </div>
            </div>

            <%@ include file="componenti/frasiMotivazionali.html"%>
        </div>
    <%@ include file="componenti/Footer.html"%>
    </body>

</html>