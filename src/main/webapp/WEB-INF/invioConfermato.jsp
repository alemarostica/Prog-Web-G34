<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="componenti/head.html"%>
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
    </head>
    <body>
        <%@include file="componenti/navBar.jsp"%>
        <jsp:useBean id="nameBean" scope="request" class="com.g34.unitn.it.progwebg34.NameBean"/>
        <div class="container">
            <div class="scheda centered">
                <h1 class="titoloScheda">Invio Confermato</h1>
                <div class="corpo centered">
                    <p>Grazie <%=nameBean.toString()%>! Ti ricontatteremo presto</p>
                </div>
            </div>
            <%@include file="componenti/frasiMotivazionali.html"%>
        </div>

        <!--<p><a href="<%=response.encodeURL("contatti")%>">Indietro</a></p>-->
        <%@include file="componenti/Footer.html"%>
    </body>
</html>
