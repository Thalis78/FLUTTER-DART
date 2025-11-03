import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "data:image/jpeg;base64,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",
            ),
            Image.asset("images/imagem-edubot.jpeg", height: 300),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
