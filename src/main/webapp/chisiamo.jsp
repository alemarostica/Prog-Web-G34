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
        <table cellspacing="20">
            <tr>
                <td><h1>La nostra storia</h1></td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 20px"><%="L'Associazione Umanitaria Tum4World ha una storia di ispirazione e impegno che affonda le radici in una profonda volontà di fare la differenza nelle vite delle persone bisognose. È stata fondata nel 2005 da un gruppo di amici con un unico obiettivo: offrire sostegno concreto a coloro che si trovavano in situazioni di difficoltà. Tutto ha avuto inizio quando un devastante terremoto ha colpito una regione della Nigeria, lasciando alle spalle distruzione e sofferenza. Questo evento tragico ha spinto il gruppo di amici a unire le forze e a mettere in atto azioni immediate per aiutare le vittime. Hanno raccolto fondi, generato consapevolezza e organizzato la distribuzione di aiuti di emergenza come cibo, acqua potabile, vestiti e riparo.L'esperienza di quella prima risposta umanitaria ha profondamente toccato il cuore di questi individui, spingendoli a continuare a lavorare insieme per affrontare altre sfide sociali. Hanno deciso di formalizzare il loro impegno fondando Tum4World, un'associazione dedicata al sostegno di comunità in difficoltà. Nel corso degli anni, l'associazione ha ampliato le proprie attività, collaborando con altre organizzazioni, aziende e istituzioni locali. Hanno sviluppato progetti per combattere la povertà, promuovere l'istruzione, fornire assistenza sanitaria e proteggere i diritti umani. Grazie all'impegno costante dei volontari e al sostegno della comunità, l'associazione ha potuto estendere la sua portata e raggiungere sempre più persone bisognose."%></p>
                </td>
                <td>
                    <img src="images/chisiamostoria.jpg" width="600" height="400" alt="Folla festeggia"/>
                </td>
            </tr>
            <tr>
                <td><h1>La fondatrice</h1></td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 20px"><%= "L'Associazione Umanitaria Tum4World è stata fondata da una persona altruista e impegnata nel campo dell'aiuto umanitario. Il fondatore è una persona con una passione per il servizio verso gli altri e una profonda sensibilità alle questioni sociali. Proviene da diverse esperienze e background, come un professionista nel settore umanitario e sociale, un'imprenditrice con una forte responsabilità sociale che ha vissuto esperienze personali che la hanno spinta a creare un'organizzazione volta a fare la differenza nella vita delle persone bisognose.\n"%></p>
                </td>
                <td>
                    <img src="images/fondatrice.jpg" width="400" height="400" alt="La fondatrice"/>
                </td>
            </tr>
            <tr>
                <td><h1>I nostri riconoscimenti</h1></td>
            </tr>
            <tr>
                <td>
                    <p style="font-size: 20px"><%= "Abbiamo ottenuto numerosi riconoscimenti per il suo impegno e i risultati raggiunti nel campo dell'azione umanitaria. Grazie alla dedizione e alla passione dei suoi membri e volontari, l'associazione è stata elogiata per l'efficacia delle sue iniziative e per l'impatto positivo che ha avuto sulle comunità in cui opera. È stata insignita di premi e riconoscimenti da parte di organizzazioni internazionali e locali, che hanno apprezzato il suo impegno nel combattere la povertà, promuovere l'istruzione, fornire assistenza sanitaria e proteggere i diritti umani. Questi riconoscimenti sono un testimonianza dell'importante lavoro svolto dall'associazione e motivano ulteriormente il suo impegno nel creare un mondo migliore per tutti.\n"%></p>
                </td>
                <td>
                    <img src="images/riconoscimenti.jpg" width="600" height="400" alt="Medaglie riconoscimenti"/>
                </td>
            </tr>
        </table>
        <%@include file="WEB-INF/componenti/cookiePopup.jsp"%>
        <%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
        <br/>
        <br/>
        <br/>
        <%@include file="WEB-INF/componenti/Footer.html"%>
    </body>
</html>
