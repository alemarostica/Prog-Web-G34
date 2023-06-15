let indexFrase = -1;
let fraseMotivazionaleDOM;

const fetchFrase = ()=>{
    // Il credentials omit è importante per impedire al fetch di settare cookie di sessione.
    // Se non viene messo c'è il pericolo che il server setti il JSESSIONID anche se il client ha premuto "rifiuta cookies"
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function () {
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);
            indexFrase = data.numero;
            fraseMotivazionaleDOM.innerText = data.frase;
        }
    }
    xmlhttp.open("GET", `frasiMotivazionali?i=${indexFrase}`, true);
    xmlhttp.send();
}
window.addEventListener('DOMContentLoaded', () => {
    fraseMotivazionaleDOM = document.getElementById("fraseMotivazionale");
    if (fraseMotivazionaleDOM) {
        fetchFrase();
        setInterval(fetchFrase, 20000);
    }
});