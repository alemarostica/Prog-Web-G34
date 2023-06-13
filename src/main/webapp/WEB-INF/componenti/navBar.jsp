<fieldset>
    <legend>navBar</legend>
    <a href="<%= response.encodeURL("index.jsp")%>"><img class="logo" src="images/logo.png" alt="logo"></a>
    <a href="<%= response.encodeURL("chisiamo.jsp")%>">Chi Siamo</a>
    <a href="<%= response.encodeURL("attivita.jsp")%>">Attività</a>
    <a href="<%= response.encodeURL("contatti")%>">Contatti</a>
    <%
        if (request.getSession().getAttribute("user") == null) {
    %>
        <a href="<%= response.encodeURL("signin")%>"><button>Sign in</button></a>
        <a href="<%= response.encodeURL("login")%>"><button>Log in</button></a>
    <%}else{%>
        <a href="<%=response.encodeURL("areaPrivata")%>"><button>Area Privata</button></a>
        <a href="<%= response.encodeURL(".") + "?logout=true" %>"><button>Log out</button></a>
    <%}%>
</fieldset>
