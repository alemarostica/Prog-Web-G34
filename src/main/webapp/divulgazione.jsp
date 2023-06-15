<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="WEB-INF/componenti/head.html"%>
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
    </head>
    <body>
    <%@include file="WEB-INF/componenti/navBar.jsp"%>
        <div class="container">
            <h1 class="titoloPagina">Mobilitazione Risorse</h1>
            <div class="scheda centered">
                <h1 class="titoloScheda">Il potere dell'informazione</h1>
                <div class="corpo">
                    <p>La nostra azienda, Tum4World, si impegna attivamente nella divulgazione e nell'assistenza alle popolazioni bisognose in tutto il mondo. Con un forte impegno verso la responsabilità sociale e la sostenibilità, ci dedichiamo a fornire risorse, supporto e opportunità alle comunità che affrontano difficoltà e svantaggi socioeconomici. La nostra attività di divulgazione coinvolge diverse iniziative, tra cui programmi educativi, accesso all'acqua potabile, assistenza sanitaria di base e sviluppo economico. Lavoriamo a stretto contatto con organizzazioni locali e internazionali per identificare le esigenze specifiche delle popolazioni che aiutiamo e sviluppare soluzioni efficaci. Attraverso campagne di sensibilizzazione, eventi di raccolta fondi e coinvolgimento della comunità, cerchiamo di creare consapevolezza e mobilitare le risorse necessarie per affrontare i problemi urgenti che queste popolazioni affrontano. La nostra missione è quella di contribuire a un mondo più equo e inclusivo, in cui tutte le persone abbiano l'opportunità di prosperare e raggiungere il loro pieno potenziale.</p>
                    <div class="imgWrap">
                        <img src="images/publicspeaking.jpg" alt="Conferenza"/>
                    </div>
                </div>
            </div>
            <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
        </div>
        <%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
        <%@include file="WEB-INF/componenti/Footer.html"%>
    </body>
</html>
