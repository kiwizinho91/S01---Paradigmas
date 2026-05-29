public class Lagosta extends Monstro {

    public Lagosta(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println(getNome() + ": senshi grelha na manteiga com ervas das cavernas");
    }
}
