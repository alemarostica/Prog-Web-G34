<fieldset>
    <legend>navBar</legend>
    <img class="logo" src="images/logo.png" alt="logo">
    <a href="<%= response.encodeURL("chiSiamo.jsp")%>">Chi Siamo</a>
    <a href="<%= response.encodeURL("attivita.jsp")%>">Attività</a>
    <a href="<%= response.encodeURL("contatti.jsp")%>">Contatti</a>
    <%
        if (request.getSession().getAttribute("utente") == null) {
    %>
        <a href="<%= response.encodeURL("signIn.jsp")%>"><button>Sign in</button></a>
        <a href="<%= response.encodeURL("login.jsp")%>"><button>Log in</button></a>
    <%}else{%>
        <% /* Per il logout dovremmo togliere l'attributo utente dalla sessione e refreshare la pagina
              Non so ancora come genstirlo*/ %>
        <button>logout</button>
    <%}%>
</fieldset>
