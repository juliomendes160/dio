void main(List<String> arguments) {
  double numero1 = 10.9;
  var numero2 = 11.1;

  print("Remover ponto flutuante");
  print(numero1.truncate());
  print(numero2.truncate());

  print("Converter para inteiro.");
  print(numero1.toInt());
  print(numero2.toInt());

  print("Arredonda para cima.");
  print(numero1.ceil());
  print(numero2.ceil());

  print("Arredonda para baixo.");
  print(numero1.floor());
  print(numero2.floor());

  print("Retorna se o número é finito");
  print(numero1.isFinite);
  print(numero2.isFinite);

  print("Retorna se o número é infinito");
  print(numero1.isInfinite);
  print(numero2.isInfinite);

  print("Retorna se o número não é um número válido");
  print(numero1.isNaN);
  print(numero2.isNaN);
  
  print("Retorna se o número é negativo");
  print(numero1.isNegative);
  print((numero2 * -1).isNegative);

  print("Converter String para inteiro");
  print(double.parse("123.456"));
  // print(int.parse("teste"));
  print(int.tryParse("teste"));
}
