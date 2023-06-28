function validaFormLogin(form) {
    const sezioneErrori = document.getElementsByClassName("error-section")[0];
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
        form.username.classList.add("red-border");
    }else if(username.length > 50){
        valido = false;
        paragrafoErrori.innerHTML += "34: la lunghezza massima per l'username è di 50 caratteri<br/>";
        form.username.classList.add("red-border");
    }
    if (password==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo password deve essere compilato<br/>";
        form.password.classList.add("red-border");
    }

    //se ci sono errori aggiungo la classe visible al contenitore per mostrare gli errori
    if(!valido){
        sezioneErrori.classList.add("visible");
    }

    return valido;
}