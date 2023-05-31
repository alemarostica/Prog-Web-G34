<%@ page import="com.g34.unitn.it.progwebg34.ErrorBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%@include file="componenti/head.html"%>
    <body>
        <%@include file="componenti/navBar.jsp"%>
        <fieldset>
            <legend>Accedi</legend>
            <form action="<%= response.encodeURL("login")%>" method="post" onsubmit="return validaFormLogin(this)">
                <label for="username">Username: </label><input type="text" id="username" name="username" required><br>
                <label for="password">Password: </label><input type="password" id="password" name="password" minlength="8" required><br><br>

                <p id="erroriForm"></p><br><br>
                <%
                    //stampa di eventuali errori provenienti da un tentativo di registrazione precedente
                    if(request.getAttribute("erroreLogin") != null){
                %>
                <jsp:useBean id="erroreLogin" scope="request" class="com.g34.unitn.it.progwebg34.ErrorBean"/>
                <p><%= erroreLogin.getTitle() %>: <%= erroreLogin.getMessage() %></p>
                <%
                    }
                %>

                <button type="submit">Invia</button>
                <button type="reset">Reset</button>
            </form>
        </fieldset>
        <%@include file="componenti/frasiMotivazionali.html"%>
        <br>
        <br>
        <br>
        <br>
        <%@include file="componenti/Footer.html"%>
    </body>
</html>
