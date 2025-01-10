void main(List<String> arguments) {
  String texto1 = "Dio";
  var texto2 = "Trilha de Flutter e DART na DIO";

  // Imprime no console o texto
  print(texto1);
  print(texto2);

  // Comparação se vazio
  print(texto2.isEmpty);
  print("".isEmpty);
  print(" ".isEmpty);

  // Obtém o tamanho da String
  print(texto2.length);

  // Maiúscula / Minúscula
  print(texto1.toUpperCase());
  print(texto2.toLowerCase());

  // Se uma String contém na outra
  print(texto2.contains(texto1.toUpperCase()));

  // Obtém parte da String
  print(texto2.substring(5));
  print(texto2.substring(1, 5));

  // Obtém posição de um texto em uma String
  print(texto2.indexOf("Flutter"));
  print(texto2.indexOf("T"));
  print(texto2.indexOf("@"));

  // Substitui uma String em outra
  print(texto2.replaceAll("a", "@"));
  
  // Quebra uma String por um caracter específico
  print(texto2.split("a"));
  print("NOME;ENDEREÇO;CEP".split(";"));

  // Remove espações
  print(" dio ".trim());
  print(" dio ".trimLeft());
  print(" dio ".trimRight());
}
