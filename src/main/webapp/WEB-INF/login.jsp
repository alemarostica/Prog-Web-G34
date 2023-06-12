<%@ page import="com.g34.unitn.it.progwebg34.ErrorBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%@include file="componenti/head.html"%>
    <body>
        <%@include file="componenti/navBar.jsp"%>

        <!-- TODO non dovremmo metterlo nell'head? -->
        <link rel="stylesheet" type="text/css" href="src/main/resources/css/form.css">

        <fieldset>
            <legend>Accedi</legend>
            <form action="<%= response.encodeURL("login")%>" method="post" onsubmit="return validaFormLogin(this)" autocomplete="off">
                <div><label for="username">Username: </label><input type="text" id="username" name="username" placeholder="Username"></div>
                <div><label for="password">Password: </label><input type="password" id="password" name="password" placeholder="Password"></div>


                <fieldset class="error-section <%= (request.getAttribute("erroreLogin") != null)? "visible" : "" %>">
                    <legend>Errore nella procedura di registrazione</legend>
                    <p id="erroriForm">
                        <%
                            //stampa di eventuali errori provenienti da un tentativo di registrazione precedente
                            if(request.getAttribute("erroreLogin") != null){
                        %>
                        <jsp:useBean id="erroreLogin" scope="request" class="com.g34.unitn.it.progwebg34.ErrorBean"/>
                        <%= erroreLogin.getTitle() %>: <%= erroreLogin.getMessage() %>
                        <%
                            }
                        %>
                    </p>
                </fieldset>

                <div class="form-controls">
                    <button type="reset">Reset</button>
                    <button type="submit">Invia</button>
                </div>
            </form>
        </fieldset>
        <%@include file="componenti/frasiMotivazionali.html"%>
        <br>
        <br>
        <br>
        <br>
        <%@include file="componenti/Footer.html"%>
        <script src="src/main/resources/js/validaFormLogin.js"></script>
    </body>
</html>
