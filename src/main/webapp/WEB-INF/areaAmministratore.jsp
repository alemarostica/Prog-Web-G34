<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="componenti/head.html"%>
    </head>
    <body>
        <%@ include file="componenti/navBar.jsp"%>

        <button onclick="elencaUtenti()">Elenca Utenti</button>
        <table id="listaUtenti">
        </table>

        <button onclick="elencaSimpatizzanti()">Elenca Simpatizzanti</button>
        <table id="listaSimpatizzanti">
        </table>

        <button onclick="elencaAderenti()">Elenca Aderenti</button>
        <table id="listaAderenti">
        </table>

        <button onclick="mostraVisite()">Visualizza visite</button>
        <p id="totaleVisite"></p>
        <div id="istogrammaVisite" style="width:500px; height: 300px;"></div>
        <button onclick="resetVisite()">resetta contatori</button>

        <br/>

        <button onclick="mostraDonazioni()">Visualizza Donazioni</button>
        <div id="istogrammaDonazioni" style="width:500px; height: 300px;"></div>

        <%@ include file="componenti/frasiMotivazionali.html"%>
        <%@ include file="componenti/Footer.html"%>
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="js/adminScripts.js"></script>
    </body>
</html>
