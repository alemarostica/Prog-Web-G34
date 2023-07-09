<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="componenti/head.html"%>
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
    </head>
    <body>
        <%@include file="componenti/navBar.jsp"%>
        <div class="container">
            <div class="scheda centered">
                <jsp:useBean id="nameBean" scope="request" class="com.g34.unitn.it.progwebg34.beans.NameBean"/>
                <h1 class="titoloScheda">Grazie <%=nameBean.toString()%> per esserti registrato!</h1>
                <div class="corpo centered">
                    <p>Ti auguriamo una buona permanenza sul nostro sito</p>
                </div>
            </div>
            <%@include file="componenti/frasiMotivazionali.html"%>
        </div>
        <%@include file="componenti/Footer.html"%>
    </body>
</html>
