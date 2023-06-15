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
<p>Benvenuto <%=user.getUsername()%></p>

<script>
    let username = '<jsp:getProperty name="user" property="username"/>';
    console.log(username);
</script>

<button onclick="datiUtente(username)">Visualizza i miei dati</button>
<table id="datiUtente">
</table>
<br>
<br>
<br>
<br>
<br>
<form action="" method="POST">
    <input type="checkbox" name="mobilitazione" value="mobilitazione" id="mobilitazione">
    <label for="mobilitazione">Mobilitazione diretta</label><br>

    <input type="checkbox" name="azione" value="azione" id="azione">
    <label for="azione">Azione diretta</label><br>

    <input type="checkbox" name="collaborazione" value="collaborazione" id="collaborazione">
    <label for="collaborazione">Collaborazione locale</label><br>

    <input type="submit" value="Iscriviti">
</form>
<br>
<br>
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

