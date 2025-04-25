public class Carro {

    public static void main(String[] a) {
        new Carro().anda();
    }

    public static void anda() {
        System.out.println("andando....");
        para(); // chamada a método de instância dentro de método estático
    }

    public void para() {
        System.out.println("parando....");
    }
}
