function validaFormLogin(form) {
    const paragrafoErrori = document.getElementById("erroriForm");
    paragrafoErrori.innerText="";

    form.username.value = form.username.value.trim();
    form.password.value = form.password.value.trim();

    const username = form.username.value;
    const password = form.password.value;

    /*
    console.log(username);
    console.log(password);
    */

    let valido = true;
    if (username==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo username deve essere compilato<br/>";
    }else if(username.length > 50){
        valido = false;
        paragrafoErrori.innerHTML += "34: la lunghezza massima per l'username è di 50 caratteri<br/>";
    }
    if (password==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo password deve essere compilato<br/>";
    }else if(!/^(?=.*[dD])(?=.*[lL])(?=.*[aA])(?=.*[rR])(?=.*[A-Z])(?=.*[0-9])(?=.*[?!$]).{8}$/.test(password)){
        valido = false;
        paragrafoErrori.innerHTML += "34: la password deve essere lunga 8 caratteri, deve contenere le lettere L, D, A, R, almeno un carattere numerico, un carattere maiuscolo e un carattere tra $, ! e ?<br/>";
    }

    return valido;
}