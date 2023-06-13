const stampaUtenti = (idTabella, listaUtenti) => {
    const tabella = document.getElementById(idTabella);
    let utenti = "<tr><th>username</th><th>nome</th><th>cognome</th><th>data nascita</th><th>email</th><th>telefono</th><th>tipo</th></tr>";

    for (let utenteStr of listaUtenti) {
        const utente = JSON.parse(utenteStr);
        utenti += `
                    <tr>
                        <td>${utente.username}</td>
                        <td>${utente.nome}</td>
                        <td>${utente.cognome}</td>
                        <td>${utente.dataNascita}</td>
                        <td>${utente.email}</td>
                        <td>${utente.telefono}</td>
                        <td>${(["simpatizzante","aderente","amministratore"])[utente.tipologia]}</td>
                    </tr>
                `;
    }
    tabella.innerHTML = utenti;
}

function elencaUtenti() {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            const data = JSON.parse(this.responseText);
            stampaUtenti("listaUtenti", data);
        }
    }
    xmlhttp.open("GET", `listaUtenti`, true);
    xmlhttp.send();
}

function elencaSimpatizzanti() {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            const data = JSON.parse(this.responseText);
            stampaUtenti("listaSimpatizzanti", data);
        }
    }
    xmlhttp.open("GET", `listaUtenti?tipologia=simpatizzanti`, true);
    xmlhttp.send();
}

function elencaAderenti() {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            const data = JSON.parse(this.responseText);
            stampaUtenti("listaAderenti", data);
        }
    }
    xmlhttp.open("GET", `listaUtenti?tipologia=aderenti`, true);
    xmlhttp.send();
}

function mostraVisite() {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            const data = JSON.parse(this.responseText);
            let totaleVisite = 0;
            const pagine = [];
            const visite = [];
            for (let pagina in data) {
                pagine.push(pagina);
                visite.push(data[pagina]);
                totaleVisite += data[pagina];
            }
            document.getElementById("totaleVisite").innerText=`Totale Visite: ${totaleVisite}`
            const istogramma = Highcharts.chart("istogrammaVisite", {
                chart: {
                    type: "bar"
                },
                title: {
                    text: "Visite Pagine"
                },
                xAxis: {
                    categories: pagine
                },
                yAxis: {
                    title: {
                        test: "Visite"
                    }
                },
                series: [{
                    name: "visite",
                    data: visite
                }]
            });
        }
    }
    xmlhttp.open("GET", `visitePagine`, true);
    xmlhttp.send();
}

function resetVisite() {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST", `visitePagine`, true);
    xmlhttp.send();
}

function mostraDonazioni() {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = async function() {
        if (this.readyState === 4 && this.status === 200) {
            const data = JSON.parse(this.responseText);

            console.log(data);

            const mesi = ["gen","feb","mar","apr","mag","giu","lug","ago","set","ott","nov","dic"]
            const donazioni = [];

            for (let mese in data) {
                donazioni.push(data[mese]);
            }

            console.log(donazioni)

            const istogramma = Highcharts.chart("istogrammaDonazioni", {
                chart: {
                    type: "bar"
                },
                title: {
                    text: "Donazioni"
                },
                xAxis: {
                    categories: mesi
                },
                yAxis: {
                    title: {
                        test: "Donazioni"
                    }
                },
                series: [{
                    name: "donazioni",
                    data: donazioni
                }]
            });
        }
    }
    xmlhttp.open("GET", `donazioni`, true);
    xmlhttp.send();
}