# IA_REPORT.md

## Identificação

- **Nome completo:Rodrigo Guimaraes Pinheiro Pascolato** 
- **Matrícula:388** 

---

## Ai utilizada

- **Ferramenta:** Chatgpt FREE (GPT-5.5) 

---

## Histórico de Prompts e Respostas

(COLOQUEI % PARA DIVIDIR AS PROMPTS PARA FICAR MAIS FACIL DE IDENTIFICAR)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

estou fazendo uma atividade de poo e o codigo nao esta rodando identifique corrija e me mande onde esta errado

public class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public int calcularPrecoFinal() {
        return getPreco() + bonusAroma;
    }
} onde esta errado

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vou te mandar as classes do outro exercicio
public class Alien extends Entidade implements Rastreavel {
    private Poder poder1;

    public Alien(String nome) {
        super(nome);
        poder = new Poder("Raio Ionico", 88);
    }

    @Override
    public String obterCoordenadas() {
        return "Alien [" + getNome() + "] -> coordenadas: lat=-23.5, lon=46.6";
    }
}


public abstract class Entidade {
    private String nome;

    public Entidade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}

public class Main {
    public static void main(String[] args) {
        RegistroOculto registro = new RegistroOculto();

        Alien a1 = new Alien("Zorg");
        Alien a2 = new Alien("Vex");
        Youkai y1 = new Youkai("Kitsune");
        Youkai y2 = new Youkai("Oni");

        registro.registrarEntidade(a1);
        registro.registrarEntidade(a2);
        registro.registrarEntidade(y1);
        registro.registrarEntidade(y2);
        registro.registrarEntidade(a1);

        registro.listarEntidades();
    }
}

public class Poder {
    private String nome;
    private int intensidade;

    public Poder(String nome, int intensidade) {
        this.nome = nome;
        this.intensidade = intensidade;
    }

    public String getNome() {
        return nome;
    }

    public int getIntensidade() {
        return intensidade;
    }
}

public interface Rastreavel {
    String obterCoordenadas();
}

import java.util.HashMap;

public class RegistroOculto {
    private HashMap<String, Entidade> mapa;

    public RegistroOculto() {
        mapa = new HashMap<>();
    }

    public void registrarEntidade(Entidade e) {
        if (mapa.containsKey(e.getNome())) {
            System.out.println("aviso: " + e.getNome() + " ja foi registrado antes");
            return;
        }
        mapa.put(e.getNome(), e);
    }

    public void listarEntidades() {
        for (String chave : mapa.keySet()) {
            Entidade e = mapa.get(chave);
            Rastreavel r = (Rastreavel) e;
            System.out.println(r.obterCoordenadas());
        }
    }
}

public class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome) {
        super(nome);
        poder = new Poder("Ilusao Espiritual", 74);
    }

    @Override
    public String obterCoordenadas() {
        return "Youkai [" + getNome() + "] -> coordenadas: lat=-15.7, lon=48.0";
    }
}

pq n esta rodando

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

entendi a correcao 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nao entendi a correcao 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

aviso: Zorg ja foi registrado antes
Alien [Zorg] -> coordenadas: lat=-23.5, lon=46.6
Youkai [Kitsune] -> coordenadas: lat=-15.7, lon=48.0
Alien [Vex] -> coordenadas: lat=-23.5, lon=46.6
Youkai [Oni] -> coordenadas: lat=-15.7, lon=48.0
Process finished with exit code 0 esta saindo isso

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

onde eu corrijo pra sair bonitinho

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Lagosta lagosta = new Lagosta("Lagosta Kelpie");
        Cogumelo cogumelo = new Cogumelo("Cogumelo Mandragora");

        Prato prato1 = new Prato("Lagosta Grelhada", lagosta);
        Prato prato2 = new Prato("Cogumelo Refogado", cogumelo);

        prato1.servir();
        prato2.servir();

        ArrayList<Prato> cardapio = new ArrayList<>();
        cardapio.add(prato1);
        cardapio.add(prato2);

        System.out.println("\ncardapio completo da expedicao:");
        for (Prato p : cardapio) {
            p.servir()
        }
    }
} onde esta o erro na main?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

--- prato: Lagosta Grelhada ---
Lagosta Kelpie: senshi grelha na manteiga com ervas das cavernas
temperado com: sal das masmorras
--- prato: Cogumelo Refogado ---
Cogumelo Mandragora: senshi resfoga no azeite com alho selvagem
temperado com: sal das masmorras

cardapio completo da expedicao:
--- prato: Lagosta Grelhada ---
Lagosta Kelpie: senshi grelha na manteiga com ervas das cavernas
temperado com: sal das masmorras
--- prato: Cogumelo Refogado ---
Cogumelo Mandragora: senshi resfoga no azeite com alho selvagem
temperado com: sal das masmorras
ta certo isso?

LINK:https://chatgpt.com/share/6a19f6de-bb6c-83e9-a586-0bf8bc848fc6

## Relatório de Satisfação e Aprendizado

Utilizei para corrigir erros, principalmente quando o codigo nao rodava e aprender algumas coisa assim ele me devolvia o codigo corrigido.
Inclusive utilizei o gpt para fazer esse modelo de Report para ficar bonitinho