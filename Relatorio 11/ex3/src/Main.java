public class Main {
    public static void main(String[] args) {
        RegistroOculto registro = new RegistroOculto();

        Alien a1 = new Alien("Zorg");
        Alien a2 = new Alien("Vex");
        Youkai y1 = new Youkai("Kitsune");
        Youkai y2 = new Youkai("Oni");

        registro.registrarEntidade(a1);
        registro.registrarEntidade(a2);
        registro.registrarEntidade(y1);
        registro.registrarEntidade(y2);
        registro.registrarEntidade(a1);

        registro.listarEntidades();
    }
}
