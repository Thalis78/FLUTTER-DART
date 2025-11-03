import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingControllerGasolina =
      TextEditingController();
  final TextEditingController _textEditingControllerAlcool =
      TextEditingController();

  int _counter = 0;

  dynamic resultado = 0.0;
  var alcool = 0.0, gasolina = 0.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage("assets/images/icons-gasolina.png"),
                ),
              ),
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor Gasolina',
              ),
              controller: _textEditingControllerGasolina,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor Alcool',
              ),
              controller: _textEditingControllerAlcool,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  gasolina = double.parse(_textEditingControllerGasolina.text);
                  alcool = double.parse(_textEditingControllerAlcool.text);
                  resultado = (alcool / gasolina) * 100;

                  if (resultado >= 70) {
                    resultado = "Abastecer com Alcool";
                  } else {
                    resultado = "Abastecer com Gasolina";
                  }
                });
              },
              child: Text("Enter"),
            ),
            Text("Resultado: ${resultado}"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
