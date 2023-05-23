<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <meta charset="UTF-8"/>
</head>
<body>
<%@include file="WEB-INF/componenti/navBar.jsp"%>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="<%=response.encodeURL("hello-servlet")%>">Hello Servlet</a>
<%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
<%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
<%@include file="WEB-INF/componenti/Footer.html"%>
</body>
</html>