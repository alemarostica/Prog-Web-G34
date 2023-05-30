<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%@include file="WEB-INF/componenti/head.html"%>
    <body>
    <fieldset>
        <legend>Registrati alla nostra associazione!</legend>
        <form action="">
            <label for="nome">Nome: </label><input type="text" id="nome" name="nome" required><br>
            <label for="cognome">Cognome: </label><input type="text" id="cognome" name="cognome" required><br>
            <label for="data-nascita">Data di nascita: </label><input type="date" id="data-nascita" name="dataNascita" required><br>
            <label for="email">Email: </label><input type="email" id="email" name="email" required><br>
            <label for="telefono">Telefono: </label><input type="tel" id="telefono" name="telefono"><br>

            Modalità di registrazione:<br>
            <label><input type="radio" name="tipoRegistrazione" value="simpatizzante" required> Simpatizzante</label><br>
            <label><input type="radio" name="tipoRegistrazione" value="aderente" required> Aderente</label><br>

            <label for="username">Username: </label><input type="text" id="username" name="username" required><br>
            <label for="password">Password: </label><input type="password" id="password" name="password" minlength="8" pattern="" required><br>
            <label for="ripeti-password">Ripeti la password: </label><input type="password" id="ripeti-password" name="ripetiPassword" minlength="8" pattern="" required><br>

            <button type="submit">Invia</button>
            <button type="reset">Reset</button>
        </form>
    </fieldset>
    <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
    <br/>
    <br/>
    <br/>
    <%@include file="WEB-INF/componenti/Footer.html"%>
    </body>
</html>
