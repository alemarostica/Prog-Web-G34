function validaFormContatti(form) {
    const paragrafoErrori = document.getElementById("erroriForm");
    paragrafoErrori.innerText="";

    form.nome.value = form.nome.value.trim();
    form.cognome.value = form.cognome.value.trim();
    form.email.value = form.email.value.trim();

    const nome = form.nome.value;
    const cognome = form.cognome.value;
    const email = form.email.value;
    const motivo = form.motivo.value;

    let valido = true;
    if (nome==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere un nome valido<br/>";
    }
    if (cognome==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere un cognome valido<br/>";
    }
    if (!email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)) {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere una email valida<br/>";
    }

    if (motivo==="scegli") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere un motivo valido<br/>";
    }

    return valido;
}