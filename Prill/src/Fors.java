public class Fors {

    static int i; // variável estática da classe

    public static void main(String args[]) {

        for (i = 0; i < 3; i++) { // usa a variável estática
            System.out.print(i); // imprime: 0 1 2
        }

        for (int i = 2; i < 3; i++) { // nova variável local "i"
            System.out.print(i);      // imprime: 2
        }
       
        int i;
        for (i = 0; i < 2; i++) {
            System.out.print(i);
        }

        System.out.print(Fors.i);    // acessa a variável estática novamente
    }
}
