let indexFrase = -1;
let fraseMotivazionaleDOM;

const sleep = async (t) => {
    let r;
    // questa promise viene usata solo per motivi estetici nella scrittura letta della frase.
    const p = new Promise((res)=>{r=res});
    setInterval(r,t);
    await p;
    return;
}
const fetchFrase = ()=>{
    // Il credentials omit è importante per impedire al fetch di settare cookie di sessione.
    // Se non viene messo c'è il pericolo che il server setti il JSESSIONID anche se il client ha premuto "rifiuta cookies"
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function () {
        if (this.readyState == 4 && this.status == 200) {
            const data = JSON.parse(this.responseText);

            indexFrase = data.numero;

            // cancella lentamente la frase vecchia
            while (fraseMotivazionaleDOM.innerText.length > 0) {
                fraseMotivazionaleDOM.innerText = fraseMotivazionaleDOM.innerText.slice(0, fraseMotivazionaleDOM.innerText.length - 1);
                await sleep(5);
            }

            // scrive lentamente la frase corrente
            for (let i = 0; i <= data.frase.length; i++) {
                fraseMotivazionaleDOM.innerText = data.frase.slice(0, i);
                await sleep(5);
            }
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