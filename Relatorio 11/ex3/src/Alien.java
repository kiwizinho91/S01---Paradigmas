public class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome) {
        super(nome);
        poder = new Poder("Raio Ionico", 88);
    }

    @Override
    public String obterCoordenadas() {
        return "Alien [" + getNome() + "] -> coordenadas: lat=-23.5, lon=46.6";
    }
}
