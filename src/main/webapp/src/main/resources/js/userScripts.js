function eliminaUtente(username) {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            const data = JSON.parse(this.responseText);
        }
    }
    xmlhttp.open("GET", `eliminaUtente?username=` + username, true);
    xmlhttp.send();
}

function getIscrizioni(mail){
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            console.log(this.responseText);
            const data = JSON.parse(this.responseText);
        }
    }
    xmlhttp.open("GET", `iscrizione?mail=` + mail, true);
    xmlhttp.send();
}