import 'package:flutter/material.dart';

class Class01 extends StatefulWidget {
  const Class01({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Class01> createState() => _Class01State();
}

class _Class01State extends State<Class01> {
  int result = 1;
  _main() {
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

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('O resultado é igual a $result.'),
          ),
          // Espaço flexível para empurrar o botão para baixo
          const Spacer(),
          // Botão alinhado na parte inferior
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _main,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 235, 235),
                  minimumSize: const Size(
                      double.infinity, 60), // Ajuste o tamanho do botão
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('RUN'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
