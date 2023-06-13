<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="WEB-INF/componenti/head.html"%>
    </head>
    <body style="
        background: aliceblue;
        margin: 50px;
    ">
        <%@include file="WEB-INF/componenti/navBar.jsp"%>
        <h1>Collaborazione locale</h1>
        <h3>Agire vicino a chi ha bisogno</h3>
        <table cellspacing="20">
            <tr>
                <td>
                    <p style="font-size: 20px"><%="L'associazione Tum4World crede fermamente nella collaborazione e nell'interazione con le realtà locali delle popolazioni bisognose. Riconosciamo l'importanza di ascoltare e comprendere le esigenze specifiche di queste comunità per sviluppare interventi efficaci e sostenibili. Lavoriamo a stretto contatto con organizzazioni locali, leader comunitari e stakeholder per stabilire partnership significative e costruttive. Questo approccio ci consente di ottenere una visione approfondita della situazione locale, di identificare le risorse esistenti e di garantire che le nostre iniziative siano culturalmente appropriate e rispettose delle tradizioni locali. Collaboriamo attivamente con le comunità coinvolte nel processo decisionale, coinvolgendo i membri locali in tutte le fasi dei progetti, per assicurarci che le soluzioni proposte siano realmente rispondenti ai bisogni e ai desideri delle persone coinvolte. La nostra associazione si impegna a costruire relazioni di fiducia e a promuovere l'empowerment delle comunità, affinché possano prendere in mano il proprio futuro e lavorare verso una maggiore resilienza e autodeterminazione."%></p>
                </td>
                <td>
                    <img src="images/medics.jpg" height="708" width="1064" alt="Conferenza"/>
                </td>
            </tr>
        </table>
        <a href="<%=response.encodeURL("attivita.jsp")%>">Indietro</a>
        <%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
        <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
        <br/>
        <br/>
        <br/>
        <%@include file="WEB-INF/componenti/Footer.html"%>
    </body>
</html>