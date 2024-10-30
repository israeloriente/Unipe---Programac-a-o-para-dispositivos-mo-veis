import 'package:flutter/material.dart';

class Cambio extends StatefulWidget {
  @override
  CambioState createState() => new CambioState();
}

class CambioState extends State<Cambio> {
  final TextEditingController controller = TextEditingController();
  double result = 0.0;

  void _convert() {
    setState(() {
      double dollar = double.tryParse(controller.text) ?? 0.0;
      result = dollar * 5.71;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversor de Dólar para Real')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Valor em Dólar',
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
              'Resultado em Reais: R\$ ${result.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
