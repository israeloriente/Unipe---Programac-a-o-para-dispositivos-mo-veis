import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unipe/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: true,
      home: PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Gerador Aleatório',
          style: TextStyle(color: CupertinoColors.white),
        ),
        backgroundColor: CupertinoColors.activeBlue,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Titulo(),
            SizedBox(height: 30),
            NumeroAleatorio(),
          ],
        ),
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Gerador de Números',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class NumeroAleatorio extends StatefulWidget {
  const NumeroAleatorio({Key? key}) : super(key: key);
  @override
  NumeroAleatorioState createState() => NumeroAleatorioState();
}

class NumeroAleatorioState extends State<NumeroAleatorio> {
  int numero = 0;
  void gerarNumero() {
    setState(() {
      Random aleatorio = Random();
      numero = aleatorio.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$numero", style: const TextStyle(fontSize: 30, color: Colors.grey)),
        const SizedBox(height: 30),
        CustomButton(
          onPressed: () {
            gerarNumero();
          },
          child: const Text(
            "Gerar Número",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
