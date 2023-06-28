<%@ page import="com.g34.unitn.it.progwebg34.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: rober
  Date: 06/06/2023
  Time: 16.32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <script>
        let username = '<jsp:getProperty name="user" property="username"/>';

        function mostraDati() {
            let tabella = document.getElementById("tabellaDati");
            tabella.style.display = "table";
        }
    </script>

    <head>
        <%@ include file="componenti/head.html"%>
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
        <link rel="stylesheet" type="text/css" href="css/userpage.css"/>
        <script src="js/userScripts.js"></script>
        <title>User page - Tum4World</title>
    </head>

    <body>
        <%@ include file="componenti/navBar.jsp"%>

        <jsp:useBean id="user" class="com.g34.unitn.it.progwebg34.UserBean" scope="session"></jsp:useBean>

        <div class="userContainer">
            <div class="centered welcome">
                <p class="else">Benvenuto <%=user.getUsername()%></p>
            </div>

            <div class="scheda centered">
                <div class="buttonContainer"><button onclick="mostraDati()">Visualizza i miei dati</button></div>
                <table id="tabellaDati" style="display: none">
                    <thead><tr><th>Username</th><th>Nome</th><th>Cognome</th><th>Data di nascita</th><th>Email</th><th>Telefono</th></tr></thead>
                    <tbody>
                        <tr>
                            <td><jsp:getProperty name="user" property="username"/></td>
                            <td><jsp:getProperty name="user" property="nome"/></td>
                            <td><jsp:getProperty name="user" property="cognome"/></td>
                            <td><jsp:getProperty name="user" property="dataNascita"/></td>
                            <td><jsp:getProperty name="user" property="email"/></td>
                            <td><jsp:getProperty name="user" property="telefono"/></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="scheda centered">
                <form action=<%=response.encodeURL("iscrizione")%> method="POST">
                    <input type="hidden" name="email" value="<%= user.getEmail() %>">

                    <input type="checkbox" name="opzione" value="1" id="mobilitazione">
                    <label for="mobilitazione">Mobilitazione diretta</label><br/>

                    <input type="checkbox" name="opzione" value="2" id="azione">
                    <label for="azione">Azione diretta</label><br/>

                    <input type="checkbox" name="opzione" value="3" id="collaborazione">
                    <label for="collaborazione">Collaborazione locale</label><br/><br/>

                    <input type="submit" value="Iscriviti">
                </form>
            </div>

            <div class="scheda centered">
                <form action=<%=response.encodeURL("donazione")%> method="POST">
                    <input type="hidden" name="email" value="<%= user.getEmail() %>">
                    <input type="number" name="donazione" id="donazione">
                    <input type="submit" value="Dona">
                </form>
            </div>

            <%-- something weird is up con questo bottone e <a>, Rob vedi tu cosa fare --%>
            <a href="<%= response.encodeURL(".") + "?logout=true" %>">
                <div class="buttonContainer"><button onclick="eliminaUtente(username)">Elimina il mio account</button></div>
            </a>
    </div>

        <%@ include file="componenti/frasiMotivazionali.html"%>
        <%@ include file="componenti/Footer.html"%>
    </body>
</html>

