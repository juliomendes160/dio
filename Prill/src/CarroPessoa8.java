class Carro {
    String cor = "branco";
    
    void mudaCor(String cor){
        this.cor = cor;
    }
}
    
class Pessoa {
    final Carro carro = new Carro();
    
    void mudaCorDoCarro(String cor){
        carro.mudaCor(cor);
    }
}