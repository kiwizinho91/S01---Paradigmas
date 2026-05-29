import java.util.ArrayList;

public class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao d) {
        divisoes.add(d);
    }

    public void listarDivisoes() {
        for (Divisao d : divisoes) {
            System.out.println(d.getNome() + " -> " + d.getFuncao());
        }
    }
}
