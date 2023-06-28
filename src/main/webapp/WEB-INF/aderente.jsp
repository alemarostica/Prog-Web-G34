<%@ page import="com.g34.unitn.it.progwebg34.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: rober
  Date: 06/06/2023
  Time: 16.32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="componenti/head.html"%>
    <script src="src/main/resources/js/userScripts.js"></script>
</head>
<body>
<%@ include file="componenti/navBar.jsp"%>
<%@ include file="componenti/users.jsp"%>

<form action=<%=response.encodeURL("donazione")%> method="POST">
    <input type="hidden" name="email" value="<%= user.getEmail() %>">
    <input type="number" name="donazione" id="donazione">
    <input type="submit" value="Dona">
</form>

<%@ include file="componenti/frasiMotivazionali.html"%>
<%@ include file="componenti/Footer.html"%>
</body>
</html>

