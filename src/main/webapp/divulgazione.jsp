<%--
  Created by IntelliJ IDEA.
  User: alessandro
  Date: 23/05/23
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mobilitazione risorse - Tum4World</title>
</head>
<body style="
    background: aliceblue;
    margin: 50px;
">
<%@include file="WEB-INF/componenti/navBar.jsp"%>
<h1>Mobilitazione risorse</h1>
<h3>Il potere dell'informazione</h3>
<table cellspacing="20">
    <tr>
        <td>
            <p style="font-size: 20px"><%="La nostra azienda, Tum4World, si impegna attivamente nella divulgazione e nell'assistenza alle popolazioni bisognose in tutto il mondo. Con un forte impegno verso la responsabilità sociale e la sostenibilità, ci dedichiamo a fornire risorse, supporto e opportunità alle comunità che affrontano difficoltà e svantaggi socioeconomici. La nostra attività di divulgazione coinvolge diverse iniziative, tra cui programmi educativi, accesso all'acqua potabile, assistenza sanitaria di base e sviluppo economico. Lavoriamo a stretto contatto con organizzazioni locali e internazionali per identificare le esigenze specifiche delle popolazioni che aiutiamo e sviluppare soluzioni efficaci. Attraverso campagne di sensibilizzazione, eventi di raccolta fondi e coinvolgimento della comunità, cerchiamo di creare consapevolezza e mobilitare le risorse necessarie per affrontare i problemi urgenti che queste popolazioni affrontano. La nostra missione è quella di contribuire a un mondo più equo e inclusivo, in cui tutte le persone abbiano l'opportunità di prosperare e raggiungere il loro pieno potenziale."%></p>
        </td>
        <td>
            <img src="./src/main/resources/images/publicspeaking.jpg" height="720" width="1280" alt="Conferenza"/>
        </td>
    </tr>
</table>
<a href=<%=response.encodeURL("attivita.jsp")%>>Indietro</a>
<%@include file="WEB-INF/componenti/Footer.html"%>
</body>
</html>
