import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class BoasVindas extends StatefulWidget {
  BoasVindasState createState() => BoasVindasState();
}

class BoasVindasState extends State<BoasVindas> {
  String mensagem = "";
  final controllerName = TextEditingController();

  bool isValid() {
    return controllerName.text == "sport1987" ? true : false;
  }

  Widget ValidText() {
    return (controllerName.text != "")
        ? (isValid() ? Text("É válido ✅") : Text("Inválido ❌"))
        : SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: controllerName,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Digite seu nome:",
              hintText: 'Digite seu nome',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Enviar"),
            onPressed: () => setState(() {}),
          ),
          SizedBox(height: 20),
          ValidText()
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Zé da manga"), backgroundColor: Colors.blue),
            body: Column(children: [BoasVindas()])));
  }
}
