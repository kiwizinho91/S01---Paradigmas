public class Cogumelo extends Monstro {

    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println(getNome() + ": senshi resfoga no azeite com alho selvagem");
    }
}
