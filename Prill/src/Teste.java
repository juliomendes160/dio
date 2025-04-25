class Tipo {

    Tipo(String texto) {
        this(Integer.parseInt(texto));
        System.out.println("Texto: " + texto);
    }

    Tipo(int valor) {
        this(" " + valor);
        System.out.println("Valor " + valor);
    }
}

public class Teste {

    public static void main(String args[]) {
        Tipo tipo = new Tipo("15");
    }
}