public class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome) {
        super(nome);
        poder = new Poder("Ilusao Espiritual", 74);
    }

    @Override
    public String obterCoordenadas() {
        return "Youkai [" + getNome() + "] -> coordenadas: lat=-15.7, lon=48.0";
    }
}
