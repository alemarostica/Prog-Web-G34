<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%@include file="WEB-INF/componenti/head.html"%>
<body style="
    background: aliceblue;
    margin: 50px;
">
<%@include file="WEB-INF/componenti/navBar.jsp"%>
<h1><%= "Insieme, possiamo cambiare il mondo: un gesto, un sorriso, una vita trasformata." %></h1>
<table cellspacing="30">
<tr>
  <td>
    <p style="font-size: 20px;"><%= "L'Associazione Umanitaria Tum4World è un faro di speranza e solidarietà che illumina la strada dei bisognosi. Attraverso il nostro impegno costante e la passione nel voler fare la differenza, ci dedichiamo a migliorare le vite di coloro che si trovano in situazioni di disagio e vulnerabilità. Ogni giorno, mettiamo in atto progetti e iniziative che affrontano le sfide più urgenti della nostra società: dalla lotta alla povertà, al sostegno all'istruzione, alla cura della salute e alla promozione dei diritti umani. Con il sostegno e la partecipazione di generosi donatori e volontari, riusciamo a creare un impatto tangibile nelle comunità che serviamo. Siamo convinti che il cambiamento sia possibile e che, uniti, possiamo costruire un futuro migliore per tutti. Unisciti a noi e diventa parte di questa straordinaria missione di speranza e solidarietà." %></p>
  </td>
  <td>
    <img src="./src/main/resources/images/homepagepic.jpg" width="600" height="200"/>
  </td>
</tr>
</table>
<div style="padding-left: 100px">
<h2><%="Scarica il nostro volantino" %></h2>
  <button style="font-size: 30px; border-radius: 12px;">Download
    <img src="./src/main/resources/images/downloadicon.png" width="35" height="35"/>
  </button>
</div>
<%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
<br/>
<br/>
<br/>
<%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
<%@include file="WEB-INF/componenti/Footer.html"%>
</body>
</html>