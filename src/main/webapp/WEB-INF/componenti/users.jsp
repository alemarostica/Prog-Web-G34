<jsp:useBean id="user" class="com.g34.unitn.it.progwebg34.UserBean" scope="session"></jsp:useBean>
<script>
  let username = '<jsp:getProperty name="user" property="username"/>';
  let mail = '<jsp:getProperty name="user" property="email"/>';

  function mostraDati() {
    let tabella = document.getElementById("tabellaDati");
    tabella.style.display = "table";
  }

  document.addEventListener("DOMContentLoaded", function() {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
      if (this.readyState === 4 && this.status === 200) {
        const data = JSON.parse(this.responseText);
      }
    }
    xmlhttp.open("GET", `iscrizione?mail=` + mail, true);
    xmlhttp.send();

    let checkboxToDisable =  <%= request.getAttribute("checkboxDisable") %>;
    console.log(checkboxToDisable);


  });

</script>
<p>Benvenuto <%=user.getUsername()%></p>

<button onclick="mostraDati()">Visualizza i miei dati</button>
<table id="tabellaDati" style="display: none">
  <tr><th>username</th><th>nome</th><th>cognome</th><th>data nascita</th><th>email</th><th>telefono</th></tr>
  <tr>
    <td><jsp:getProperty name="user" property="username"/></td>
    <td><jsp:getProperty name="user" property="nome"/></td>
    <td><jsp:getProperty name="user" property="cognome"/></td>
    <td><jsp:getProperty name="user" property="dataNascita"/></td>
    <td><jsp:getProperty name="user" property="email"/></td>
    <td><jsp:getProperty name="user" property="telefono"/></td>
  </tr>
</table>
<br>
<br>
<br>
<br>
<br>
<form action=<%=response.encodeURL("iscrizione")%> method="POST">
  <input type="hidden" name="email" value="<%= user.getEmail() %>">

  <input type="checkbox" name="opzione" value="1" id="mobilitazione">
  <label for="mobilitazione">Mobilitazione diretta</label><br>

  <input type="checkbox" name="opzione" value="2" id="azione">
  <label for="azione">Azione diretta</label><br>

  <input type="checkbox" name="opzione" value="3" id="collaborazione">
  <label for="collaborazione">Collaborazione locale</label><br>

  <input type="submit" value="Iscriviti">
</form>
<br>
<br>
<br>
<br>
<br>
<a href="<%= response.encodeURL(".") + "?logout=true" %>">
  <button onclick="eliminaUtente(username)">Elimina il mio account</button>
</a>