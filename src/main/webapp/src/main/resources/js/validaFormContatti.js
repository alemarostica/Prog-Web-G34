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
        paragrafoErrori.innerHTML += "34: il campo nome deve essere compilato<br/>";
    }
    if (cognome==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo cognome deve essere compilato<br/>";
    }
    if (email==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo email deve essere compilato<br/>";
    }else if (!email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)) {
        valido = false;
        paragrafoErrori.innerHTML += "34: l'email inserita non è valida<br/>";
    }
    if (motivo==="scegli") {
        valido = false;
        paragrafoErrori.innerHTML += "34: scegli una motivazione<br/>";
    }

    return valido;
}