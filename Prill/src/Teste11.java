class Funcionario {
    public void mostrarSalario(){
        System.out.println("meu salário 1.000,00");
    }
}

class Diretor extends Funcionario {
    public void mostrarSalario(){
        System.out.println("meu salário 5.000,00");
    } 
}

public class Teste11 {
    public static void main(String[] args) {
       Funcionario funcionario = new Diretor();
       funcionario.mostrarSalario();
    }
}
