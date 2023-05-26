function validaFormRegistrazione(form) {
    const paragrafoErrori = document.getElementById("erroriForm");
    paragrafoErrori.innerText="";

    form.nome.value = form.nome.value.trim();
    form.cognome.value = form.cognome.value.trim();
    form.email.value = form.email.value.trim();
    form.telefono.value = form.telefono.value.trim();
    form.username.value = form.username.value.trim();
    form.password.value = form.password.value.trim();
    form.ripetiPassword.value = form.ripetiPassword.value.trim();

    const nome = form.nome.value;
    const cognome = form.cognome.value;
    const dataNascita = form.dataNascita.value;
    const email = form.email.value;
    const telefono = form.telefono.value;
    const username = form.username.value;
    const password = form.password.value;
    const ripetiPassword = form.ripetiPassword.value;

    console.log(nome);
    console.log(cognome);
    console.log(dataNascita);
    console.log(email);
    console.log(telefono);
    console.log(username);
    console.log(password);
    console.log(ripetiPassword);

    let valido = true;
    if (nome==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere un nome valido<br/>";
    }
    if (cognome==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere un cognome valido<br/>";
    }
    if (dataNascita==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere una data di nascita valida<br/>";
    }else{
        const dateDiff = new Date() - new Date(dataNascita);
        if(new Date(dateDiff).getFullYear() < 1988){
            valido = false;
            paragrafoErrori.innerHTML += "per registrarsi bisogna avere almeno 18 anni<br/>";
        }
    }
    if (!email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)) {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere una email valida<br/>";
    }
    if (telefono==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere un telefono valido<br/>";
    }
    if (username==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere un username valido<br/>";
    }
    if (password==="") {
        valido = false;
        paragrafoErrori.innerHTML += "provvedere una password valida<br/>";
    }
    if (ripetiPassword==="") {
        valido = false;
        paragrafoErrori.innerHTML += "ripetere la password<br/>";
    }
    if (password!==ripetiPassword) {
        valido = false;
        paragrafoErrori.innerHTML += "le due password non corrispondono<br/>";
    }

    return valido;
}