<fieldset>
    <legend>navBar</legend>
    <a href="<%= response.encodeURL("index.jsp")%>"><img class="logo" src="images/logo.png" alt="logo"></a>
    <a href="<%= response.encodeURL("chisiamo.jsp")%>">Chi Siamo</a>
    <a href="<%= response.encodeURL("attivita.jsp")%>">Attività</a>
    <a href="<%= response.encodeURL("contatti")%>">Contatti</a>
    <%
        if (request.getSession().getAttribute("utente") == null) {
    %>
        <a href="<%= response.encodeURL("signin.jsp")%>"><button>Sign in</button></a>
        <a href="<%= response.encodeURL("login.jsp")%>"><button>Log in</button></a>
    <%}else{%>
        <% /* Per il logout dovremmo togliere l'attributo utente dalla sessione e refreshare la pagina
              Non so ancora come gestirlo*/ %>
        <button>logout</button>
    <%}%>
</fieldset>
