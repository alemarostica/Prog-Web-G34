<%@ page import="com.g34.unitn.it.progwebg34.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: rober
  Date: 06/06/2023
  Time: 16.32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ include file="componenti/head.html"%>
<body>
<%@ include file="componenti/navBar.jsp"%>

<jsp:useBean id="user" class="com.g34.unitn.it.progwebg34.UserBean" scope="session"></jsp:useBean>
<script>
    let username = '<jsp:getProperty name="user" property="username"/>';

    function mostraDati() {
        let tabella = document.getElementById("tabellaDati");
        tabella.style.display = "table";
    }
</script>
<p>Benvenuto <%=user.getUsername()%></p>

<button onclick="mostraDati()">Visualizza i miei dati</button>
<table id="tabellaDati" style="display: none">
    <tr><th>username</th><th>nome</th><th>cognome</th><th>data nascita</th><th>email</th><th>telefono</th></tr>
    <tr>
        <td><jsp:getProperty name="user" property="username"/></td>
        <td><jsp:getProperty name="user" property="nome"/></td>
        <td><jsp:getProperty name="user" property="cognome"/></td>
        <td><jsp:getProperty name="user" property="dataNascita"/></td>
        <td><jsp:getProperty name="user" property="email"/></td>
        <td><jsp:getProperty name="user" property="telefono"/></td>
    </tr>
</table>
<br>
<br>
<br>
<br>
<br>
<form action=<%=response.encodeURL("iscrizione")%> method="POST">
    <input type="hidden" name="email" value="<%= user.getEmail() %>">

    <input type="checkbox" name="opzione" value="1" id="mobilitazione">
    <label for="mobilitazione">Mobilitazione diretta</label><br>

    <input type="checkbox" name="opzione" value="2" id="azione">
    <label for="azione">Azione diretta</label><br>

    <input type="checkbox" name="opzione" value="3" id="collaborazione">
    <label for="collaborazione">Collaborazione locale</label><br>

    <input type="submit" value="Iscriviti">
</form>
<br>
<br>

<form action=<%=response.encodeURL("donazione")%> method="POST">
    <input type="hidden" name="email" value="<%= user.getEmail() %>">
    <input type="number" name="donazione" id="donazione">
    <input type="submit" value="Dona">
</form>
<br>
<br>
<br>
<a href="<%= response.encodeURL(".") + "?logout=true" %>">
    <button onclick="eliminaUtente(username)">Elimina il mio account</button>
</a>
<%@ include file="componenti/frasiMotivazionali.html"%>
<%@ include file="componenti/Footer.html"%>
</body>
</html>

