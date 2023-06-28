function eliminaUtente() {
    if (!window.confirm("Sei sicuro?\nTutti i tuoi dati andranno persi.")) return;
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", 'eliminaUtente', true);
    xmlhttp.send();
}

function mostraDati() {
    let tabella = document.getElementById("tabellaDati");
    tabella.classList.remove("hiddenTable");
}