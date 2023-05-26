<%--
  Created by IntelliJ IDEA.
  User: Luca
  Date: 26/05/2023
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <jsp:useBean id="nameBean" scope="request" class="com.g34.unitn.it.progwebg34.NameBean"/>
        <p>Grazie <%=nameBean.toString()%> per esserti registrato!</p>
        <p>Ti auguriamo una buona permanenza sul nostro sito</p>
    </body>
</html>
