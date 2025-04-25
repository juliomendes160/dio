// Definição das exceções
class NormalException extends Exception { }

class EspecialException extends RuntimeException { }

public class G {
    // Método que lança a exceção verificada NormalException
    public void metodo() throws NormalException {
        throw new NormalException();
    }

    public static void main(String[] args) {
        int a, b, c, d;
        a = b = c = d = 0;

        try {
            new G().metodo();
            a++;
        } catch (NormalException e) {
            b++;
        } catch (EspecialException e) {
            c++;
        } finally {
            d++;
        }

        System.out.println(a + "," + b + "," + c + "," + d);
    }
}
