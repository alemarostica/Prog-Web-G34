<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Registrazione</title>
    </head>
    <body>
        <fieldset>
            <legend>Registrati alla nostra associazione!</legend>
            <form action="<%= response.encodeURL("registrazione")%>" method="post" onsubmit="return validaFormRegistrazione(this)">
                <label for="nome">Nome: </label><input type="text" id="nome" name="nome" required><br>
                <label for="cognome">Cognome: </label><input type="text" id="cognome" name="cognome" required><br>
                <label for="data-nascita">Data di nascita: </label><input type="date" id="data-nascita" name="dataNascita" required><br>
                <label for="email">Email: </label><input type="email" id="email" name="email" required><br>
                <label for="telefono">Telefono: </label><input type="tel" id="telefono" name="telefono"><br>

                Modalità di registrazione:<br>
                <input type="radio" id="radioSimpatizzante" name="tipoRegistrazione" value="0" required><label for="radioSimpatizzante"> Simpatizzante</label><br>
                <input type="radio" id="radioAderente" name="tipoRegistrazione" value="1" required><label for="radioAderente"> Aderente</label><br>

                <label for="username">Username: </label><input type="text" id="username" name="username" required><br>
                <label for="password">Password: </label><input type="password" id="password" name="password" minlength="8" required><br>
                <label for="ripeti-password">Ripeti la password: </label><input type="password" id="ripeti-password" name="ripetiPassword" minlength="8" required><br><br>

                <p id="erroriForm"></p><br><br>

                <button type="submit">Invia</button>
                <button type="reset">Reset</button>
            </form>
        </fieldset>
        <script src="src/main/resources/js/validaFormContatti.js"></script>
    </body>
</html>
