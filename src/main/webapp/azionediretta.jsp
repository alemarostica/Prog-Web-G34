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
        <h1 class="titoloPagina">Azione diretta</h1>
        <div class="scheda centered">
            <h1 class="titoloScheda">Volontariato sostenibile</h1>
            <div class="corpo">
                <p>L'associazione umanitaria Tum4World si impegna in azioni dirette per alleviare le sofferenze e migliorare le condizioni di vita delle popolazioni bisognose in tutto il mondo. Attraverso un approccio olistico, forniamo assistenza immediata in situazioni di emergenza, come fornire cibo, acqua, riparo e cure mediche essenziali. Inoltre, lavoriamo a lungo termine per promuovere lo sviluppo sostenibile, implementando programmi educativi, progetti di sviluppo comunitario e sostenendo l'accesso a servizi di base come istruzione, salute e infrastrutture. Il nostro obiettivo è quello di ripristinare la dignità delle persone colpite da crisi umanitarie e di fornire loro le risorse necessarie per costruire un futuro più stabile e prospero. Grazie alla generosità dei nostri sostenitori e alla collaborazione con altre organizzazioni, lavoriamo incessantemente per portare speranza, guarigione e cambiamento duraturo nelle vite delle persone che serviamo.</p>
                <div class="imgWrap">
                    <img src="images/volunteers.jpg" alt="Volontari"/>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
    </div>
    <%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
    <%@include file="WEB-INF/componenti/Footer.html"%>
    </body>
</html>
