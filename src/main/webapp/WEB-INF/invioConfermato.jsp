<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="componenti/head.html"%>
    </head>
    <body>
        <%@include file="componenti/navBar.jsp"%>

        <jsp:useBean id="nameBean" scope="request" class="com.g34.unitn.it.progwebg34.NameBean"/>
        <p>Grazie <%=nameBean.toString()%></p>
        <p>Invio Confermato! Ti ricontatteremo presto.</p>
        <p><a href="<%=response.encodeURL("contatti")%>">Indietro</a></p>
        <%@include file="componenti/frasiMotivazionali.html"%>
        <br/>
        <br/>
        <br/>
        <%@include file="componenti/Footer.html"%>
    </body>
</html>
