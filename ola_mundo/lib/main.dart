import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucas Veríssimo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Feira Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
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
  void _decrementCounter(){
    setState(() {
      if(_counter > 0) {
        _counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text (
              'Macarrão',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const Text(
              'Adicionar no carrinho:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayMedium,

            ),
          ],
        ),
      ),
        floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Icon(
                    Icons.arrow_upward_outlined
                ),
                onPressed: _incrementCounter,
                heroTag: null,
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                child: Icon(
                    Icons.arrow_downward_outlined
                ),
                onPressed: _decrementCounter,
                heroTag: null,
              )
            ]
        )
    );
  }
}
