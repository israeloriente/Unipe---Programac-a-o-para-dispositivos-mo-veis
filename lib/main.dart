import 'package:flutter/material.dart';
import 'package:unipe/cambio.dart';
import 'package:unipe/unidade.dart';

void main() {
  runApp(MyApp());
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
  PaginaInicialState createState() => new PaginaInicialState();
}

class PaginaInicialState extends State<PaginaInicial> {
  int index = 0;

  Widget mudarTela() {
    switch (index) {
      case 0:
        return Unidade();
      case 1:
        return Cambio();
      default:
        return Text('');
    }
  }

  Widget item(title, idx) {
    return ListTile(
        title: Text(title),
        onTap: () {
          setState(() {
            index = idx;
          });

          Navigator.pop(context);
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home")),
      body: mudarTela(),
      drawer: new Drawer(
        child: new ListView(children: [
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          item("Conversor de Câmbio", 1),
          item("Conversor de Unidade", 0),
        ]),
      ),
    );
  }
}
