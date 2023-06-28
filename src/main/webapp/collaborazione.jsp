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
            <h1 class="titoloPagina">Collaborazione locale</h1>
            <div class="scheda centered">
                <h1 class="titoloScheda">Agire vicino a chi ha bisogno</h1>
                <div class="corpo">
                    <p>L'associazione Tum4World crede fermamente nella collaborazione e nell'interazione con le realtà locali delle popolazioni bisognose. Riconosciamo l'importanza di ascoltare e comprendere le esigenze specifiche di queste comunità per sviluppare interventi efficaci e sostenibili. Lavoriamo a stretto contatto con organizzazioni locali, leader comunitari e stakeholder per stabilire partnership significative e costruttive. Questo approccio ci consente di ottenere una visione approfondita della situazione locale, di identificare le risorse esistenti e di garantire che le nostre iniziative siano culturalmente appropriate e rispettose delle tradizioni locali. Collaboriamo attivamente con le comunità coinvolte nel processo decisionale, coinvolgendo i membri locali in tutte le fasi dei progetti, per assicurarci che le soluzioni proposte siano realmente rispondenti ai bisogni e ai desideri delle persone coinvolte. La nostra associazione si impegna a costruire relazioni di fiducia e a promuovere l'empowerment delle comunità, affinché possano prendere in mano il proprio futuro e lavorare verso una maggiore resilienza e autodeterminazione.</p>
                    <div class="imgWrap">
                        <img src="images/medics.jpg" alt="Conferenza"/>
                    </div>
                </div>
            </div>
            <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
        </div>
        <%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
        <%@include file="WEB-INF/componenti/Footer.html"%>
    </body>
</html>