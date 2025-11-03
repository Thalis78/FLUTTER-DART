import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Frutas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> itens = ['Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'];

  late List<bool> checked;

  @override
  void initState() {
    super.initState();
    checked = List<bool>.filled(itens.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(itens[index]),
            value: checked[index],
            onChanged: (bool? value) {
              setState(() {
                checked[index] = value ?? false;
              });
            },
          );
        },
      ),
    );
  }
}
