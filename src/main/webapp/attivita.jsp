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
            <h1 class="titoloPagina">Cosa Facciamo?</h1>

            <div class="scheda">
                <h1 class="titoloScheda">Agiamo Su Molti Fronti</h1>
                <div class="corpo">
                    <p>L'associzione umanitaria Tum4World si impegna su numerosi fronti umanitari nei quali raggiunge periodicamente importanti traguardi. Esplora le attività che porta avanti!</p>
                </div>
            </div>

            <div class="scheda">
                <h1 class="titoloScheda">Mobilitazione Risorse</h1>
                <div class="corpo">
                    <p>L'associzione umanitaria Tum4World si impegna su numerosi fronti umanitari nei quali raggiunge periodicamente importanti traguardi. Esplora le attività che porta avanti!</p>
                    <div class="imgWrap">
                        <a href="<%=response.encodeURL("divulgazione.jsp")%>"><img src="images/hands-earth.avif" width="400" height="400" alt="Divulgazione"/></a>
                    </div>
                </div>
            </div>

            <div class="scheda">
                <h1 class="titoloScheda">Azione Diretta</h1>
                <div class="corpo">
                    <p>L'associazione Tum4World si impegna attivamente ad aiutare le popolazioni bisognose attraverso azioni umanitarie dirette. Forniamo assistenza immediata in situazioni di emergenza e promuoviamo lo sviluppo sostenibile a lungo termine. Il nostro obiettivo è ripristinare la dignità delle persone e fornire loro le risorse necessarie per costruire un futuro migliore. Grazie alla generosità dei nostri sostenitori, portiamo speranza e cambiamento duraturo nelle vite delle persone che serviamo.</p>
                    <div class="imgWrap">
                        <a href="<%=response.encodeURL("azionediretta.jsp")%>"><img src="images/homepagepic.jpg" alt="Azione diretta"></a>
                    </div>
                </div>
            </div>


            <div class="scheda">
                <h1 class="titoloScheda">Collaborazione Locale</h1>
                <div class="corpo">
                    <p>L'associazione Tum4World si impegna a collaborare con le realtà locali delle popolazioni bisognose. Ascoltiamo e comprendiamo le loro esigenze specifiche, lavorando a stretto contatto con organizzazioni locali, leader comunitari e stakeholder. Coinvolgiamo attivamente le comunità nel processo decisionale e promuoviamo l'empowerment locale. La nostra missione è costruire relazioni di fiducia, rispettare le tradizioni locali e lavorare insieme per un futuro più resiliente e autodeterminato.</p>
                    <div class="imgWrap">
                        <a href="<%=response.encodeURL("collaborazione.jsp")%>"><img src="images/chisiamostoria.jpg" alt="Collaborazione locale"></a>
                    </div>
                </div>
            </div>
            <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
            <%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
        </div>
        <%@include file="WEB-INF/componenti/Footer.html"%>
    </body>
</html>
