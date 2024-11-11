import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class Pessoa {
  int id;
  String nome;
  int idade;

  Pessoa({this.id = 0, this.nome = "", this.idade = 0});

  // Ler um objeto JSON e criar um objeto DART a partir
  // do JSON
  factory Pessoa.fromJson(Map<String, dynamic> json) {
    return Pessoa(id: json["id"], nome: json["nome"], idade: json["idade"]);
  }

  Map<String, dynamic> toJson() => {"id": id, "nome": nome, "idade": idade};
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: PaginaInicial());
  }
}

class PaginaInicial extends StatefulWidget {
  @override
  PaginaInicialState createState() => PaginaInicialState();
}

class PaginaInicialState extends State<PaginaInicial> {
  var jsonTexto = '{"id":3, "nome": "Fumagalli", "idade": 5}';

  var jsonTeste = {"id": 1, "nome": "Thyago Maia", "idade": 25};

  @override
  Widget build(BuildContext context) {
    var pessoa = Pessoa.fromJson(jsonTeste);
    var pessoa2 = Pessoa();
    var textoParaJson = json.decode(jsonTexto);

    pessoa2.id = 2;
    pessoa2.nome = "Afonso";
    pessoa2.idade = 32;

    var pessoa3 = Pessoa.fromJson(textoParaJson);

    var json2 = pessoa2.toJson();

    return Scaffold(
        appBar: AppBar(title: Text("Lendo um objeto JSON")),
        body: Column(children: [
          Text(pessoa3.id.toString()),
          Text(pessoa3.nome),
          Text(pessoa3.idade.toString()),
        ]));
  }
}
