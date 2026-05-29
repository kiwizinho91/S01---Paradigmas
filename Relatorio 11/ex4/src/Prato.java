public class Prato {
    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {
        this.nome = nome;
        this.monstro = monstro;
        tempero = new Tempero("sal das masmorras", 2);
    }

    public void servir() {
        System.out.println("--- prato: " + nome + " ---");
        monstro.virarPrato();
        System.out.println("temperado com: " + tempero.getNome());
        System.out.println("");
    }
}
