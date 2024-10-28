import 'package:flutter/material.dart';

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
        return Container(
          child: Text('Bem vindo a tela Principal'),
        );
      case 1:
        return Container(
          child: Text('Bem vindo a tela 1'),
        );
      case 2:
        return Container(
          child: Text('Bem vindo a tela 2'),
        );
      case 3:
        return Container(
          child: Text('Bem vindo a tela 3'),
        );
    }

    return Text('');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Drawer")),
      body: mudarTela(),
      drawer: new Drawer(
        child: new ListView(children: [
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
              title: Text('Tela 1'),
              onTap: () {
                setState(() {
                  index = 1;
                });

                Navigator.pop(context);
              }),
          ListTile(
              title: Text('Tela 2'),
              onTap: () {
                setState(() {
                  index = 2;
                });
                Navigator.pop(context);
              }),
          ListTile(
              title: Text('Tela 3'),
              onTap: () {
                setState(() {
                  index = 3;
                });
                Navigator.pop(context);
              })
        ]),
      ),
    );
  }
}
