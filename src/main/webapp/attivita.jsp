<%--
  Created by IntelliJ IDEA.
  User: alessandro
  Date: 23/05/23
  Time: 09:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Attività - Tum4World</title>
</head>
<body style="
    background: aliceblue;
    margin: 50px;
">
<%@include file="WEB-INF/componenti/navBar.jsp"%>
<h1>Cosa facciamo?</h1>
<h2>Agiamo su molti fronti</h2>
<p style="font-size: 20px"><%="L'associzione umanitaria Tum4World si impegna su numerosi fronti umanitari nei quali raggiunge periodicamente importanti traguardi. Esplora le attività che porta avanti!"%></p>
<table cellspacing="20">
  <tr>
    <td>
      <h3>Mobilitazione risorse</h3>
      <p style="font-size: 20px"><%="L'associzione umanitaria Tum4World si impegna su numerosi fronti umanitari nei quali raggiunge periodicamente importanti traguardi. Esplora le attività che porta avanti!"%></p>
    </td>
    <td>
      <a href=<%=response.encodeURL("divulgazione.jsp")%>><img src="./src/main/resources/images/hands-earth.avif" width="400" height="400" alt="Divulgazione"/></a>
    </td>
  </tr>
  <tr>
    <td>
      <h3>Azione diretta</h3>
      <p style="font-size: 20px"><%="L'associazione Tum4World si impegna attivamente ad aiutare le popolazioni bisognose attraverso azioni umanitarie dirette. Forniamo assistenza immediata in situazioni di emergenza e promuoviamo lo sviluppo sostenibile a lungo termine. Il nostro obiettivo è ripristinare la dignità delle persone e fornire loro le risorse necessarie per costruire un futuro migliore. Grazie alla generosità dei nostri sostenitori, portiamo speranza e cambiamento duraturo nelle vite delle persone che serviamo."%></p>
    </td>
    <td>
      <a href=<%=response.encodeURL("azionediretta.jsp")%>><img src="./src/main/resources/images/homepagepic.jpg" alt="Azione diretta"></a>
    </td>
  </tr>
  <tr>
    <td>
      <h3>Collaborazione locale</h3>
      <p style="font-size: 20px"><%="L'associazione Tum4World si impegna a collaborare con le realtà locali delle popolazioni bisognose. Ascoltiamo e comprendiamo le loro esigenze specifiche, lavorando a stretto contatto con organizzazioni locali, leader comunitari e stakeholder. Coinvolgiamo attivamente le comunità nel processo decisionale e promuoviamo l'empowerment locale. La nostra missione è costruire relazioni di fiducia, rispettare le tradizioni locali e lavorare insieme per un futuro più resiliente e autodeterminato."%></p>
    </td>
    <td>
      <a href=<%=response.encodeURL("collaborazione.jsp")%>><img src="./src/main/resources/images/chisiamostoria.jpg" alt="Collaborazione locale"></a>
    </td>
  </tr>
</table>
<%@include file="WEB-INF/componenti/Footer.html"%>
</body>
</html>
