<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="componenti/head.html"%>

        <link rel="stylesheet" type="text/css" href="css/form.css">
    </head>
    <body>
        <%@include file="componenti/navBar.jsp"%>

        <fieldset>
            <legend>Registrati alla nostra associazione!</legend>
            <form action="<%= response.encodeURL("signin")%>" method="post" onsubmit="return validaFormRegistrazione(this)" autocomplete="off">
                <div><label for="nome">Nome: </label><input type="text" id="nome" name="nome" placeholder="Nome"></div>
                <div><label for="cognome">Cognome: </label><input type="text" id="cognome" name="cognome" placeholder="Cognome"></div>
                <div><label for="data-nascita">Data di nascita: </label><input type="date" id="data-nascita" name="dataNascita"></div>
                <div><label for="email">Email: </label><input type="email" id="email" name="email" placeholder="Email"></div>
                <div><label for="telefono">Telefono: </label><input type="tel" id="telefono" name="telefono" placeholder="Telefono"></div>

                <div>
                    <label>Modalità di registrazione:</label>
                    <div class="radio-field">
                        <label for="radioSimpatizzante"><input type="radio" id="radioSimpatizzante" name="tipoRegistrazione" value="0" checked> Simpatizzante</label>
                        <label for="radioAderente"><input type="radio" id="radioAderente" name="tipoRegistrazione" value="1"> Aderente</label>
                    </div>
                </div>

                <div><label for="username">Username: </label><input type="text" id="username" name="username" placeholder="Username"></div>
                <div><label for="password">Password: </label><input type="password" id="password" name="password" placeholder="Password"></div>
                <div><label for="ripeti-password">Ripeti la password: </label><input type="password" id="ripeti-password" name="ripetiPassword" placeholder="Password"></div>


                <fieldset class="error-section <%= (request.getAttribute("erroreRegistrazione") != null)? "visible" : "" %>">
                    <legend>Errore nella procedura di registrazione</legend>
                    <p id="erroriForm">
                        <%
                            //stampa di eventuali errori provenienti da un tentativo di registrazione precedente
                            if(request.getAttribute("erroreRegistrazione") != null){
                        %>
                        <jsp:useBean id="erroreRegistrazione" scope="request" class="com.g34.unitn.it.progwebg34.ErrorBean"/>
                        <%= erroreRegistrazione.getTitle() %>: <%= erroreRegistrazione.getMessage() %>
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
        <script src="js/validaFormRegistrazione.js"></script>
    </body>
</html>
