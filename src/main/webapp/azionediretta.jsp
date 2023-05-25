<%--
  Created by IntelliJ IDEA.
  User: alessandro
  Date: 23/05/23
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Divulgazione - Tum4World</title>
</head>
<body style="
    background: aliceblue;
    margin: 50px;
">
<%@include file="WEB-INF/componenti/navBar.jsp"%>
<h1>Azione diretta</h1>
<h3>Volontariato sostenibile</h3>
<table cellspacing="20">
    <tr>
        <td>
            <p style="font-size: 20px"><%="\n" +
                    "L'associazione umanitaria Tum4World si impegna in azioni dirette per alleviare le sofferenze e migliorare le condizioni di vita delle popolazioni bisognose in tutto il mondo. Attraverso un approccio olistico, forniamo assistenza immediata in situazioni di emergenza, come fornire cibo, acqua, riparo e cure mediche essenziali. Inoltre, lavoriamo a lungo termine per promuovere lo sviluppo sostenibile, implementando programmi educativi, progetti di sviluppo comunitario e sostenendo l'accesso a servizi di base come istruzione, salute e infrastrutture. Il nostro obiettivo è quello di ripristinare la dignità delle persone colpite da crisi umanitarie e di fornire loro le risorse necessarie per costruire un futuro più stabile e prospero. Grazie alla generosità dei nostri sostenitori e alla collaborazione con altre organizzazioni, lavoriamo incessantemente per portare speranza, guarigione e cambiamento duraturo nelle vite delle persone che serviamo."%></p>
        </td>
        <td>
            <img src="./src/main/resources/images/volunteers.jpg" height="320" width="480" alt="Volontari"/>
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
