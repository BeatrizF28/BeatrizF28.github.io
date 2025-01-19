import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(),); // Add a comma here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dois campos de texto'),
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
  String textFieldValue1 = "";
  String textFieldValue2 = "";

  void _onChanged1(String value) {
    setState(() {
      textFieldValue1 = value;
    });
  }

  void _onChanged2(String value) {
    setState(() {
      textFieldValue2 = value;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                hintText: 'Digite o texto aqui',
              ),
              onChanged: _onChanged1,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Digite mais texto aqui',
              ),
              onChanged: _onChanged2,
            ),
            const SizedBox(height: 10),
            Text('Texto 1: $textFieldValue1'),
            Text('Texto 2: $textFieldValue2'),
          ],
        ),
      ),
    );
  }
}