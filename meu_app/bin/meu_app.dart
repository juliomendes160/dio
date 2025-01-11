void main(List<String> arguments) {
  DateTime data1 = DateTime.now();
  data1 = DateTime.parse("2022-02-01 11:28:57");

  // Partes da data
  print(data1);
  print(data1.day);
  print(data1.month);
  print(data1.year);
  print(data1.hour);
  print(data1.minute);
  print(data1.second);
}
