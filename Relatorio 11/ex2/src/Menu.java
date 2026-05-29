import java.util.ArrayList;

public class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe c) {
        cafes.add(c);
    }

    public void exibirMenu() {
        for (Cafe c : cafes) {
            System.out.println(c.getNome() + " - R$ " + c.calcularPrecoFinal());
        }
    }
}
