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
            p.servir();
        }
    }
}
