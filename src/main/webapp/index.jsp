<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="WEB-INF/componenti/head.html"%>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <title>Home - Tum4World</title>
</head>
<body>
<%@include file="WEB-INF/componenti/navBar.jsp"%>
<div class="container">
    <div class="scheda">
        <h1 class="titoloScheda">Insieme, possiamo cambiare il mondo: un gesto, un sorriso, una vita trasformata.</h1>
        <div class="corpo">
            <p><%= "L'Associazione Umanitaria Tum4World è un faro di speranza e solidarietà che illumina la strada dei bisognosi. Attraverso il nostro impegno costante e la passione nel voler fare la differenza, ci dedichiamo a migliorare le vite di coloro che si trovano in situazioni di disagio e vulnerabilità. Ogni giorno, mettiamo in atto progetti e iniziative che affrontano le sfide più urgenti della nostra società: dalla lotta alla povertà, al sostegno all'istruzione, alla cura della salute e alla promozione dei diritti umani. Con il sostegno e la partecipazione di generosi donatori e volontari, riusciamo a creare un impatto tangibile nelle comunità che serviamo. Siamo convinti che il cambiamento sia possibile e che, uniti, possiamo costruire un futuro migliore per tutti. Unisciti a noi e diventa parte di questa straordinaria missione di speranza e solidarietà." %></p>
            <div class="imgWrap">
                <img src="images/logo.svg"/>
            </div>
        </div>
    </div>

    <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>

    <div class="scheda">
        <h1 class="titoloScheda">Scarica il nostro volantino</h1>
        <a href="pdf/volantino.pdf" download>
            <button class="downloadButton" id="downloadButton">
                <img src="images/downloadicon.png" width="35" height="35"/>
            </button>
        </a>
    </div>
</div>

<%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
<%@include file="WEB-INF/componenti/Footer.html"%>
</body>
</html>