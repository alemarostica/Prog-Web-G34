function confermaEliminaUtente() {
    return window.confirm("Sei sicuro?\nTutti i tuoi dati andranno persi.");
}

function mostraDati() {
    let tabella = document.getElementById("tabellaDati");
    tabella.classList.remove("hiddenTable");
}