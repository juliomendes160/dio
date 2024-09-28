package candidatura;

import java.util.concurrent.ThreadLocalRandom;

public class ProcessoSeletivo {
	public static void main(String[] args) {
		selecaoCandidatos();
		
	}
	static void selecaoCandidatos() {
		String [] candidatos = {"FELIPE","MARCIA","JULIA","PAULO","AUGUSTO","MONICA","FABRICIO","MIRELA","DANIELA","JORGE"};
		
		int candidatosSelecionados = 0;
		int candidatoAtual = 0;
		double salarioBase = 2000.0;
		
		while(candidatosSelecionados < 5 && candidatoAtual < candidatos.length) {
			String candidato = candidatos[candidatoAtual];
			double salarioPretendido = valorPrentendido();
			
			System.out.println("O candidato " + candidato + " Solicitou esse valor de salário " + salarioPretendido);
			if(salarioBase > salarioPretendido) {
				System.out.println("O candidato " + candidato + " foi selecionado para a vaga");
			}
			candidatoAtual++;
		}
	}
	static double valorPrentendido() {
		return ThreadLocalRandom.current().nextDouble(1800, 2200);
				
	}
	static void analisarCandidato(double salarioPretendido) {
		double salarioBase = 2000.0;
		if(salarioBase > salarioPretendido) {
			System.out.println("LIGAR PARA CANDIDATO");
		}else if(salarioBase==salarioPretendido) {
			System.out.println("LIGAR PARA O CANDIDATO COM UMA CONTRAPROPOSTA");
		}else {
			System.out.println("AGUARDANDO O RESULTADO DOS DEMAIS CANDIDATOS");
		}
		
	}
}
