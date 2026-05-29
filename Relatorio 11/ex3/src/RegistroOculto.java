import java.util.HashMap;

public class RegistroOculto {
    private HashMap<String, Entidade> mapa;

    public RegistroOculto() {
        mapa = new HashMap<>();
    }

    public void registrarEntidade(Entidade e) {
        if (mapa.containsKey(e.getNome())) {
            System.out.println("aviso: " + e.getNome() + " ja foi registrado antes");
            return;
        }
        mapa.put(e.getNome(), e);
    }

    public void listarEntidades() {
        for (String chave : mapa.keySet()) {
            Entidade e = mapa.get(chave);
            if (e instanceof Rastreavel) {
                Rastreavel r = (Rastreavel) e;
                System.out.println(e.getNome() + " | " + r.obterCoordenadas());
            }
        }
    }
}

