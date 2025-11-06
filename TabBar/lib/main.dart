import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

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
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar Widget"),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.cloud_outlined)),
                Tab(icon: Icon(Icons.beach_access_sharp)),
                Tab(icon: Icon(Icons.brightness_5_outlined)),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[CloudyPage(), RainyPage(), SunnyPage()],
          ),
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

class CloudyPage extends StatelessWidget {
  const CloudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/1163/1163624.png',
            ),
            width: 120,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class RainyPage extends StatelessWidget {
  const RainyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/4150/4150897.png',
            ),
            width: 120,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class SunnyPage extends StatelessWidget {
  const SunnyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/869/869869.png',
            ),
            width: 120,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
