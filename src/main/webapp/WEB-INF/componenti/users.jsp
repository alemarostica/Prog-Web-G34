<jsp:useBean id="user" class="com.g34.unitn.it.progwebg34.beans.UserBean" scope="session"></jsp:useBean>
<jsp:useBean id="iscrizione1" class="com.g34.unitn.it.progwebg34.beans.AttivitaBean" scope="request"></jsp:useBean>
<jsp:useBean id="iscrizione2" class="com.g34.unitn.it.progwebg34.beans.AttivitaBean" scope="request"></jsp:useBean>
<jsp:useBean id="iscrizione3" class="com.g34.unitn.it.progwebg34.beans.AttivitaBean" scope="request"></jsp:useBean>

<div class="welcome">
  <p>Benvenuto <jsp:getProperty name="user" property="nome"/></p>
</div>

<div class="scheda centered">
    <h3 class="titoloPagina">Dati personali</h3><br/>
    <div class="buttonContainer"><button onclick="mostraDati()">Visualizza i miei dati</button></div>
    <table class="hiddenTable" id="tabellaDati">
        <tr><th>Username</th><th>Nome</th><th>Cognome</th><th>Data di nascita</th><th>Email</th><th>Telefono</th></tr>
        <tr>
            <td><jsp:getProperty name="user" property="username"/></td>
            <td><jsp:getProperty name="user" property="nome"/></td>
            <td><jsp:getProperty name="user" property="cognome"/></td>
            <td><jsp:getProperty name="user" property="dataNascita"/></td>
            <td><jsp:getProperty name="user" property="email"/></td>
          <td><jsp:getProperty name="user" property="telefono"/></td>
        </tr>
    </table>
</div>

<div class="scheda centered">
    <h3 class="titoloPagina">Iscriviti alle nostre attività</h3><br/>
    <div class="form-center">
        <form action="<%=response.encodeURL("iscrizione")%>" method="POST">
            <input type="checkbox" name="opzione" value="1" id="mobilitazione" <%if (iscrizione1.getIscritto()){%> checked disabled <%}%> />
            <label for="mobilitazione">Mobilitazione diretta</label>
            <a href="divulgazione.jsp"><img src="images/redirect.png" alt="redirect" height="15" width="15"></a><br/>

            <input type="checkbox" name="opzione" value="2" id="azione" <%if (iscrizione2.getIscritto()){%> checked disabled <%}%> />
            <label for="azione">Azione diretta</label>
            <a href="azionediretta.jsp"><img src="images/redirect.png" alt="redirect" height="15" width="15"></a><br/>

            <input type="checkbox" name="opzione" value="3" id="collaborazione" <%if (iscrizione3.getIscritto()){%> checked disabled <%}%> />
            <label for="collaborazione">Collaborazione locale</label>
            <a href="collaborazione.jsp"><img src="images/redirect.png" alt="redirect" height="15" width="15"></a><br/><br/>

            <div class="buttonContainer"><input type="submit" value="Iscriviti"></div>
        </form>
    </div>
</div>

<div class="scheda centered">
  <h3 class="titoloPagina">Gestisci account</h3><br/>
      <div class="buttonContainer">
          <form action="eliminaUtente" onsubmit="return confermaEliminaUtente()" method="GET">
              <input type="submit" value="Elimina Il Mio Account">
          </form>
      </div>
</div>