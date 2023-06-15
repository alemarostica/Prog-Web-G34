<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="componenti/head.html"%>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <script src="js/validaFormContatti.js"></script>
    </head>
    <body>
        <%@include file="componenti/navBar.jsp"%>

        <div class="container">

            <div class="scheda">
                <h1 class="titoloScheda">Lasciaci un messaggio, ti ricontatteremo il più presto possibile</h1>
                <div class="corpo">
                    <form action="<%=response.encodeURL("contatti")%>" method="post" onsubmit="return validaFormContatti(this)" autocomplete="off">
                        <div><label for="nome">Nome: </label><input type="text" id="nome" name="nome" placeholder="Nome"></div>
                        <div><label for="cognome">Cognome: </label><input type="text" id="cognome" name="cognome" placeholder="Cognome"></div>
                        <div><label for="email">Email: </label><input type="email" id="email" name="email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"></div>
                        <div>
                            <label for="motivo">Per quale motivo ci stai contattando?</label>
                            <select name="motivo" id="motivo">
                                <option value="scegli" selected disabled hidden>Seleziona un motivo</option>
                                <option value="consiglio">Darvi un consiglio</option>
                                <option value="informazioni">Chiedere informazioni</option>
                                <option value="aiuto">Chiedere aiuto</option>
                                <option value="altro">Altro</option>
                            </select>
                        </div>
                        <div><label for="msg">Scrivi qui il tuo messaggio: </label><textarea id="msg" name="msg" rows="8" cols="70" placeholder="Messaggio..."></textarea></div>

                        <fieldset class="error-section">
                            <legend>Errore nella procedura di registrazione</legend>
                            <p id="erroriForm"></p>
                        </fieldset>

                        <div class="form-controls">
                            <button type="reset">Reset</button>
                            <button type="submit">Invia</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="scheda">
                <h1 class="titoloScheda">La nostra sede principale è in via Gruppo 34</h1>
                <div class="corpo">
                    <div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d692.0477615846015!2d11.161657292243712!3d46.06723166597202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4782769398f78a33%3A0xa0709898bf37370!2s38123%20Povo%20TN!5e0!3m2!1sit!2sit!4v1684849198016!5m2!1sit!2sit" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        <br/>
                        <h1>Puoi telefonarci al 343434</h1>
                    </div>
                </div>

            </div>
            <%@include file="componenti/frasiMotivazionali.html"%>
        </div>
        <%@include file="componenti/Footer.html"%>
    </body>
</html>
