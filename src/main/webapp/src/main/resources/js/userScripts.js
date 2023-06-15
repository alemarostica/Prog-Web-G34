const stampaUtente = (idTabella, datiUtente) => {
    const tabella = document.getElementById(idTabella);
    let utenti = "<tr><th>username</th><th>nome</th><th>cognome</th><th>data nascita</th><th>email</th><th>telefono</th><th>tipo</th></tr>";

    for (let utenteStr of datiUtente) {
        const utente = JSON.parse(utenteStr);
        utenti += `
                    <tr>
                        <td>${utente.username}</td>
                        <td>${utente.nome}</td>
                        <td>${utente.cognome}</td>
                        <td>${utente.dataNascita}</td>
                        <td>${utente.email}</td>
                        <td>${utente.telefono}</td>
                    </tr>
                `;
    }
    tabella.innerHTML = utenti;
}

function datiUtente(username) {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            console.log(this.responseText);
            const data = JSON.parse(this.responseText);
            stampaUtente("datiUtente", data);
        }
    }
    xmlhttp.open("GET", `datiUtente?username=` + username, true);
    xmlhttp.send();
}

function eliminaUtente(username) {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            console.log(this.responseText);
            const data = JSON.parse(this.responseText);
        }
    }
    xmlhttp.open("GET", `eliminaUtente?username=` + username, true);
    xmlhttp.send();
}