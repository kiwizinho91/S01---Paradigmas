public class CafeteriaLeblanc {
    private Menu menu;

    public CafeteriaLeblanc() {
        menu = new Menu();
    }

    public void adicionarCafe(Cafe c) {
        menu.adicionarCafe(c);
    }

    public void abrirCafeteria() {
        System.out.println("seja bem vindo ao leblanc");
        menu.exibirMenu();
    }
}
