abstract class Animal { }
class Mamifero extends Animal { }
class Anfibio extends Animal { }

public class Teste9 {
    public static void main(String[] args){
        Animal animal = new Mamifero();
        Anfibio anfibio = (Anfibio) animal;
    }
}