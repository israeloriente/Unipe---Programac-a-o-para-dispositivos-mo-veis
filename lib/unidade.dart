import 'package:flutter/material.dart';

class Unidade extends StatefulWidget {
  @override
  UnidadeState createState() => new UnidadeState();
}

class UnidadeState extends State<Unidade> {
  final TextEditingController controller = TextEditingController();
  double result = 0.0;

  void _convert() {
    setState(() {
      double milimetro = double.tryParse(controller.text) ?? 0.0;
      result = milimetro / 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversor de mm para cm')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Valor em Milimetro',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _convert,
              child: Text('Converter'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Resultado em Centimetros: ${result}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
