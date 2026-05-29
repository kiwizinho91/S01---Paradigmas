public class Mago extends Personagem {

    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("meu nome eh " + getNome() + " e consigo controlar o fogo");
    }
}
