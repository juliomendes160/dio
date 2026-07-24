# Aplicando Sintaxe e Controle em Java | Desafio de código | Básico | 1 hrs

## 1 / 3 - Validação de Cadastro: Nome e Idade em Java
<details open><summary>Java</summary>

    import java.util.Scanner;

    public class Main {
        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            String entrada = scanner.nextLine();

            String[] dados = entrada.split(" ");

            if (dados.length == 2) {
                String nome = dados[0];
                int idade = Integer.parseInt(dados[1]);

                if (!nome.isEmpty() && idade >= 18) {
                    System.out.println("Cadastro aprovado");
                } else {
                    System.out.println("Cadastro reprovado");
                }
            } else {
                System.out.println("Cadastro reprovado");
            }

            scanner.close();
        }
    }
</details>

## 2 / 3 - Contagem de Códigos de Tarefa em Relatórios Diários
<details open><summary>Java</summary>
    
    import java.util.Scanner;

    public class Main {
        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);

            // Lê a linha de códigos de tarefas e separa em um array
            String[] codigos = scanner.nextLine().split(" ");

            // Lê o código de tarefa a ser buscado
            String codigoBuscado = scanner.nextLine();

            int contador = 0;

            // Percorre o array e conta as ocorrências
            for (String codigo : codigos) {
                if (codigo.equals(codigoBuscado)) {
                    contador++;
                }
            }

            // Imprime o resultado
            System.out.println(contador);

            scanner.close();
        }
    }
</details>


## 3 / 3 - Validação de Comandos Críticos em Java
<details open><summary>Java</summary>
    
    import java.util.Scanner;

    public class Main {
        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            String comando = scanner.nextLine();

            if (comando.equals("START") || comando.equals("STOP") || comando.equals("RESTART")) {
                System.out.println("Command accepted");
            } else {
                System.out.println("Command rejected");
            }

            scanner.close();
        }
    }
</details>