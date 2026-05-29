public class Main {
    public static void main(String[] args) {
        CafeteriaLeblanc leblanc = new CafeteriaLeblanc();

        leblanc.adicionarCafe(new Cafe("Cafe do Dia", 5.0));
        leblanc.adicionarCafe(new Cafe("Espresso", 7.5));
        leblanc.adicionarCafe(new CafeGourmet("Blend Reserva", 12.0, 3.5));

        leblanc.abrirCafeteria();
    }
}
