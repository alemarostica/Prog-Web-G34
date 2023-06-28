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
    <script src="js/userScripts.js"></script>
    <link rel="stylesheet" href="css/main.css" type="text/css"/>
    <link rel="stylesheet" href="css/userpage.css" type="text/css"/>
</head>
<body>
<%@ include file="componenti/navBar.jsp"%>
<div class="container">
    <%@include file="componenti/users.jsp"%>
    <%@ include file="componenti/frasiMotivazionali.html"%>
</div>
<%@ include file="componenti/Footer.html"%>
</body>
</html>

