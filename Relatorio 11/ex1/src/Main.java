import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        Mago howl = new Mago("Howl", 27);
        howl.apresentar();

        ArrayList<Divisao> lista = new ArrayList<>();
        CasteloAnimado castelo = new CasteloAnimado(lista);

        castelo.adicionarDivisao(new Divisao("Quarto", "Descanso"));
        castelo.adicionarDivisao(new Divisao("Laboratorio", "Alquimia"));
        castelo.adicionarDivisao(new Divisao("Sala de Entrada", "Recepcao"));

        castelo.listarDivisoes();
    }
}