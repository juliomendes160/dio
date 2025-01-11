void main(List<String> arguments) {
  Map<String, dynamic> map1 = Map<String, dynamic>();
  var map = {'zero': 0, 'one': 1, 'Two': 2};

  print(map1);
  print(map);

  print("Obtém valor pela chave");
  print(map["one"]);

  map.addAll({'ten': 10, 'eleven': 11});
  print(map);

  print("Se vazio");
  print(map.isNotEmpty);
  print(map1.isEmpty);

  print("Tamanho");
  print(map.length);

  print("Contém chave");
  print(map1.containsKey("eleven"));
  print(map1.containsKey("teste"));

  map1.addAll({"Nome": "Danilo"});
  map1.addAll({"Idade": 39});
  map1.addAll({"Casado": true});
  map1.addAll({"Nascimento": DateTime(1982, 12, 28)});
  map1.addAll({"Nome": "Danilo"});
  print(map1["Idade"]);
}
