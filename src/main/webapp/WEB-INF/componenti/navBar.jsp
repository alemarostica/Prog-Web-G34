<div id="navBar">
    <div id="navbarLeft">
        <a href="<%= response.encodeURL("index.jsp")%>"><img class="logo" src="images/logo.svg" alt="logo"></a>
    </div>
    <div id="navbarCenter">
        <a href="<%= response.encodeURL("chisiamo.jsp")%>">CHI SIAMO</a>
        <a href="<%= response.encodeURL("attivita.jsp")%>">ATTIVITÀ</a>
        <a href="<%= response.encodeURL("contatti")%>">CONTATTI</a>
    </div>
    <div id="navbarRight">
    <%
        if (request.getSession().getAttribute("user") == null) {
    %>
        <a href="<%= response.encodeURL("signin")%>">SIGN IN</a>
        <a href="<%= response.encodeURL("login")%>">LOG IN</a>
    <%}else{%>
        <a href="<%=response.encodeURL("areaPrivata")%>">Area Privata</a>
        <a href="<%= response.encodeURL(".?logout=true") %>">Log out</a>
    <%}%>
    </div>
</div>
