void main() {
  int result = 1;

  // Tipos de variaveis
  int idade;
  double altura;
  num salario;
  bool portaAberta = true;
  String nome;
  List nomes;
  Map cadastro;
  dynamic samba;

  // Operadores
  print(5 + 4);
  print(5 - 4);
  print(5 * 4);
  print(5 / 4);
  print(5 ~/ 4);
  print("Sport " + " campeão de 1987");
  print("2" + "2");
  double x = 2.2;
  print(++x);
  print(x++);
  x *= 1;

  // Concatenação
  String time = "Sport";
  print("$time é o verdadeiro campeão de 87");
  print("Resultado da soma: ${5 + 6}");

  String senha = "admin";
  print("A primaira letra da senha: ${senha[0]}");
  print("Minha variavel tem ${senha.length} caracteres");
}
