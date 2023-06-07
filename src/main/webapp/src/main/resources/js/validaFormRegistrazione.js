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

    /*
    console.log(nome);
    console.log(cognome);
    console.log(dataNascita);
    console.log(email);
    console.log(telefono);
    console.log(username);
    console.log(password);
    console.log(ripetiPassword);
    */

    let valido = true;
    if (nome==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo nome deve essere compilato<br/>";
    }else if(nome.length > 50){
        valido = false;
        paragrafoErrori.innerHTML += "34: la lunghezza massima per il nome è di 50 caratteri<br/>";
    }
    if (cognome==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo cognome deve essere compilato<br/>";
    }else if(cognome.length > 50){
        valido = false;
        paragrafoErrori.innerHTML += "34: la lunghezza massima per il cognome è di 50 caratteri<br/>";
    }
    if (dataNascita==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo data di nascita deve essere compilato<br/>";
    }else{
        const dateDiff = new Date() - new Date(dataNascita);
        if(new Date(dateDiff).getFullYear() < 1988){
            valido = false;
            paragrafoErrori.innerHTML += "34: per registrarsi bisogna avere almeno 18 anni<br/>";
        }
    }
    if (email==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo email deve essere compilato<br/>";
    }else if (!email.match(/^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/)) {
        valido = false;
        paragrafoErrori.innerHTML += "34: l'email inserita non è valida<br/>";
    }
    if (telefono==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: il campo numero di telefono deve essere compilato<br/>";
    }else if(telefono.length > 50){
        valido = false;
        paragrafoErrori.innerHTML += "34: la lunghezza massima per il numero di telefono è di 20 caratteri<br/>";
    }
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
    if (ripetiPassword==="") {
        valido = false;
        paragrafoErrori.innerHTML += "34: ripetere la password<br/>";
    }
    if (password!==ripetiPassword) {
        valido = false;
        paragrafoErrori.innerHTML += "34: le due password non corrispondono<br/>";
    }

    return valido;
}