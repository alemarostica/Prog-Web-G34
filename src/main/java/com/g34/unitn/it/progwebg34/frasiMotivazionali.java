package com.g34.unitn.it.progwebg34;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.*;
import java.util.Random;

@WebServlet(name = "frasiMotivazionali", value = "/frasiMotivazionali")
public class frasiMotivazionali extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Prende un parametro i per evitare di dare la stessa frase 2 volte di fila
        // Se il parametro non è dato tieni -1
        String iParam = request.getParameter("i");
        int i = -1;
        if (iParam != null)
            try {
                i = Integer.parseInt(iParam);
            }catch (NumberFormatException e) {
                // Se il parametro è dato ma non è intero lascia i = -1
            }

        // Apertura file frasi
        String filePath = getServletContext().getRealPath("frasiMotivazionali.xml");
        File fileFrasiMotivazionali = new File(filePath);
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        try {
            // Apertura e parsing del XML
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document doc = db.parse(fileFrasiMotivazionali);
            doc.getDocumentElement().normalize();
            NodeList frasi = doc.getElementsByTagName("frase");

            // prende una frase casuale. Se è uguale a quella di prima prendi la successiva
            int randomIndex = new Random().nextInt(frasi.getLength());
            if (randomIndex == i)
                randomIndex = (randomIndex+1) % frasi.getLength();
            Node nodoFrase = frasi.item(randomIndex);
            String frase = nodoFrase.getTextContent();

            // manda la risposta come JSON
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(String.format("{\"frase\": \"%s\", \"numero\": %d}",frase,randomIndex));
            out.flush();
        } catch (ParserConfigurationException e) {
            throw new RuntimeException(e);
        } catch (SAXException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}