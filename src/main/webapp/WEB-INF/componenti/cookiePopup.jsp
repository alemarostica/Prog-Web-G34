<%
// mostra il popup solo alla prima visita
if (request.getSession(false)==null || request.getSession().isNew()){
%>

<fieldset id="cookiePopup">
    <legend>Informativa sui cookies</legend>
    <div onclick="closeCookiePopup()">×</div>
    <p>Questo sito web utilizza i cookie per migliorare l'esperienza di navigazione degli utenti. I cookie sono piccoli file di testo che vengono memorizzati sul dispositivo dell'utente quando visita un sito web. Essi ci aiutano a monitorare l'utilizzo del sito e a personalizzare i contenuti in base alle preferenze dell'utente.</p>
    <a href="<%=response.encodeURL("cookiepolicy.jsp")%>">Leggi qui l'informativa completa</a>
    <script>
        function closeCookiePopup(){
            document.getElementById("cookiePopup").classList.add("closed");
        }
    </script>
</fieldset>

<%
}
%>
