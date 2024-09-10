import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: true, home: PaginaInicial());
  }
}

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Gerador Aleatório',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Titulo(), SizedBox(height: 30), NumeroAleatorio()],
        )));
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('Gerador de Números', style: TextStyle(fontSize: 20)));
  }
}

class NumeroAleatorio extends StatefulWidget {
  @override
  NumeroAleatorioState createState() => NumeroAleatorioState();
}

class NumeroAleatorioState extends State<NumeroAleatorio> {
  int numero = 0;
  void gerarNumero() {
    print("Teste");
    setState(() {
      Random aleatorio = Random();
      numero = aleatorio.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text("$numero", style: TextStyle(fontSize: 30)),
        SizedBox(height: 10),
        ElevatedButton(onPressed: gerarNumero, child: Text("Gerar Número"))
      ],
    ));
  }
}
