<%
// mostra il popup solo alla prima visita
if (request.getSession().isNew() && request.getSession().getAttribute("accettaCookies")==null){
%>
<link rel="stylesheet" type="text/css" href="./css/cookiePopup.css"/>

<fieldset class="cookie">
    <legend>Informativa sui cookies</legend>
    <a>Questo sito web utilizza i cookie per migliorare l'esperienza di navigazione degli utenti. I cookie sono piccoli file di testo che vengono memorizzati sul dispositivo dell'utente quando visita un sito web. Essi ci aiutano a monitorare l'utilizzo del sito e a personalizzare i contenuti in base alle preferenze dell'utente.</a> <br/>
    <a href="cookiepolicy.html">Leggi qui l'informativa completa.</a> <br/>
    <button href="<%=response.encodeURL(".")%>?accettaCookies=true" style="background-color: greenyellow; width: 50%;"> Accetta Cookies</button>
    <button href="<%=response.encodeURL(".")%>" style="float: right; background-color: orangered; width: 50%;"> Rifiuta Cookies</button>
</fieldset>

<%
}
%>
