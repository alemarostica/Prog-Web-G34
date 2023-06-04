package com.g34.unitn.it.progwebg34;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class ContatoreVisite {
    private static Map<String,Integer> contatori = new HashMap<>();

    public synchronized static void incrementa(String pagina) {
        if (!contatori.containsKey(pagina)) {
            contatori.put(pagina,1);
        }else {
            contatori.put(pagina,contatori.get(pagina)+1);
        }
    }

    public synchronized static int getVisite(String pagina) {
        if (contatori.containsKey(pagina)) {
            return contatori.get(pagina);
        }else {
            return 0;
        }
    }

    public synchronized static HashMap<String, Integer> getContatori(){
        //utilizzo il copy constructor di HashMap per assicurarmi che i "veri" contatori
        //vengano utilizzati solamente dentro al metodo synchronized
        return new HashMap<String, Integer>(contatori);
    }

    public synchronized static void reset(String pagina) {
        if(contatori.containsKey(pagina))
            contatori.put(pagina,0);
    }
    public synchronized static void reset() {
        contatori.clear();
    }
}
