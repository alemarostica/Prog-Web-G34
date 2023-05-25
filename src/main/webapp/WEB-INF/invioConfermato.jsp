<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 25/05/2023
  Time: 08:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="componenti/navBar.jsp"%>

<jsp:useBean id="nameBean" scope="request" class="com.g34.unitn.it.progwebg34.NameBean"/>
<p>Grazie <%=nameBean.toString()%></p>
<p>Invio Confermato! Ti ricontatteremo presto.</p>
<p><a href="<%=response.encodeURL("contatti")%>">Indietro</a></p>

<%@include file="componenti/Footer.html"%>
</body>
</html>
