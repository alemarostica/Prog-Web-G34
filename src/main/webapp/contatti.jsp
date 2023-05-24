<%--
  Created by IntelliJ IDEA.
  User: rober
  Date: 23/05/2023
  Time: 15.30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contattaci - T4W</title>
</head>
<body>
<%@include file="WEB-INF/componenti/navBar.jsp"%>
<div style="width: 100%; height: 80%">
<div style="width: 50%; float: left">
    <h1>La nostra sede principale è in via Gruppo 34</h1>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d692.0477615846015!2d11.161657292243712!3d46.06723166597202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4782769398f78a33%3A0xa0709898bf37370!2s38123%20Povo%20TN!5e0!3m2!1sit!2sit!4v1684849198016!5m2!1sit!2sit" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    <br/>
    <h1>Puoi telefonarci al 343434</h1>
</div>
<div style="width: 50%; float: right;">
    <h1>Lasciaci un messaggio, ti ricontatteremo il più presto possibile</h1>
    <form>
        <label>Nome</label><input type="text" id="nome">
        <label>Cognome</label><input type="text" id="cognome"><br/>
        <label>e-mail</label><input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" id="email"><br/>
        <label>Per quale motivo ci stai contattando?</label>
        <select name="motivo" id="motivo">
            <option value="consiglio">Darvi un consiglio</option>
            <option value="informazioni">Chiedere informazioni</option>
            <option value="aiuto">Chiedere aiuto</option>
            <option value="altro">Altro</option>
        </select> <br/>
        <textarea id="msg" name="msg" row="10" cols="70" placeholder="Scrivi qui il tuo messaggio..."></textarea>
        <br/>
        <input type="reset" />
        <input type="submit" />
    </form>
</div>
</div>
<%@include file="WEB-INF/componenti/frasiMotivazionali.html"%>
<br>
<br>
<br>
<br>
<%@include file="WEB-INF/componenti/Footer.html"%>
</body>
</html>
