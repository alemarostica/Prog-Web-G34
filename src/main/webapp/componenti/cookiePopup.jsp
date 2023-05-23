<%
// mostra il popup solo alla prima visita
if (request.getSession().isNew() && request.getSession().getAttribute("accettaCookies")==null){
%>

<fieldset>
    <legend>Cookie Popup</legend>
    <a href="<%=response.encodeURL(".")%>?accettaCookies=true"> Accetta Cookies</a>
    <a href="<%=response.encodeURL(".")%>"> Rifiuta Cookies</a>
</fieldset>

<%
}
%>
