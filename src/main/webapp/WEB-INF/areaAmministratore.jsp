<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

    <head>
        <%@ include file="componenti/head.html"%>
        <link rel="stylesheet" type="text/css" href="css/admin.css"/>
        <link rel="stylesheet" type="text/css" href="css/table.css"/>
    </head>

    <body>
        <%@ include file="componenti/navBar.jsp"%>

        <div class="container">

            <br/>

            <div class="scheda centered">
                <h3 class="titoloPagina">Utenti</h3>
                <div class="buttonContainer"><button onclick="elencaUtenti()">Elenca Utenti</button></div>
                <table id="listaUtenti">
                </table>
            </div>

            <div class="scheda centered">
                <h3 class="titoloPagina">Simpatizzanti</h3>
                <div class="buttonContainer"><button onclick="elencaSimpatizzanti()">Elenca Simpatizzanti</button></div>
                <table id="listaSimpatizzanti">
                </table>
            </div>

            <div class="scheda centered">
                <h3 class="titoloPagina">Aderenti</h3>
                <div class="buttonContainer"><button onclick="elencaAderenti()">Elenca Aderenti</button></div>
                <table id="listaAderenti">
                </table>
            </div>

            <div class="scheda centered">
                <h3 class="titoloPagina">Visite sito</h3>
                <div class="buttonContainer">
                    <div style="display: inline-block; padding: 2px" class="buttonContainer"><button onclick="mostraVisite()">Visualizza Visite</button></div>
                    <div style="display: inline-block; padding: 2px" class="buttonContainer"><button onclick="resetVisite()">Resetta Contatori</button></div>
                </div>
                    <p class="titoloPagina" id="totaleVisite"></p>
                <div class="histogram" id="istogrammaVisite" style="width:500px; height: 300px;"></div>
            </div>

            <div class="scheda centered">
                <h3 class="titoloPagina">Donazioni</h3>
                <div class="buttonContainer"><button onclick="mostraDonazioni()">Visualizza Donazioni</button></div>
                <div class="histogram" id="istogrammaDonazioni" style="width:500px; height: 300px;"></div>
            </div>

            <%-- TODO: trova una soluzione per le frasi motivazionali che stanno come sheda decentrata --%>
            <%@ include file="componenti/frasiMotivazionali.html"%>
        </div>

        <%@ include file="componenti/Footer.html"%>
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="js/adminScripts.js"></script>

    </body>

</html>
