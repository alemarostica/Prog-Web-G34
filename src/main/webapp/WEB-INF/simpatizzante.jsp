<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <%@ include file="componenti/head.html"%>
        <script src="js/userScripts.js"></script>
        <link rel="stylesheet" href="css/simpatizzante.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/table.css"/>
    </head>

    <body>
    <%@ include file="componenti/navBar.jsp"%>
        <div class="container">
            <%@include file="componenti/users.jsp"%>
            <%@ include file="componenti/frasiMotivazionali.html"%>
        </div>
    <%@ include file="componenti/Footer.html"%>
    </body>

</html>

