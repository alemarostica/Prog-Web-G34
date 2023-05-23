<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<jsp:include page="componenti/navBar.jsp"></jsp:include>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="<%=response.encodeURL("hello-servlet")%>">Hello Servlet</a>
<jsp:include page="componenti/cookiePopup.jsp"></jsp:include>
<%@include file="./componenti/Footer.html"%>
</body>
</html>