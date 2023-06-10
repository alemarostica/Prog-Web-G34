<%@ page import="com.g34.unitn.it.progwebg34.ErrorBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%@include file="componenti/head.html"%>
    <body>
        <%@include file="componenti/navBar.jsp"%>
        <link rel="stylesheet" type="text/css" href="src/main/resources/css/form.css">

        <fieldset>
            <legend>Registrati alla nostra associazione!</legend>
            <form action="<%= response.encodeURL("signin")%>" method="post" class="form-signin" onsubmit="return validaFormRegistrazione(this)">
                <label for="nome">Nome: </label><input type="text" id="nome" name="nome" placeholder="Nome"><br>
                <label for="cognome">Cognome: </label><input type="text" id="cognome" name="cognome" placeholder="Cognome"><br>
                <label for="data-nascita">Data di nascita: </label><input type="date" id="data-nascita" name="dataNascita"><br>
                <label for="email">Email: </label><input type="email" id="email" name="email" placeholder="Email"><br>
                <label for="telefono">Telefono: </label><input type="tel" id="telefono" name="telefono" placeholder="Telefono"><br>

                Modalità di registrazione:<br>
                <input type="radio" id="radioSimpatizzante" name="tipoRegistrazione" value="0" checked><label for="radioSimpatizzante"> Simpatizzante</label><br>
                <input type="radio" id="radioAderente" name="tipoRegistrazione" value="1"><label for="radioAderente"> Aderente</label><br>

                <label for="username">Username: </label><input type="text" id="username" name="username" placeholder="Username"><br>
                <label for="password">Password: </label><input type="password" id="password" name="password" placeholder="Password"><br>
                <label for="ripeti-password">Ripeti la password: </label><input type="password" id="ripeti-password" name="ripetiPassword" placeholder="Password"><br><br>

                <p id="erroriForm"></p><br><br>
                <%
                    //stampa di eventuali errori provenienti da un tentativo di registrazione precedente
                    if(request.getAttribute("erroreRegistrazione") != null){
                        %>
                <jsp:useBean id="erroreRegistrazione" scope="request" class="com.g34.unitn.it.progwebg34.ErrorBean"/>
                <p><%= erroreRegistrazione.getTitle() %>: <%= erroreRegistrazione.getMessage() %></p>
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
        <script src="src/main/resources/js/validaFormRegistrazione.js"></script>
    </body>
</html>
