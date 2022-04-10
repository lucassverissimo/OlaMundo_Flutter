import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool _isDarkTheme = false;

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
          title: Text("Adicionar na feira"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text (
                'Macarrão',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.displayMedium,

              ),
              Switch(
                  value: AppController.instance.isDarkTheme,
                  onChanged: (value) {
                    AppController.instance.changeTheme();
                  }),
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
                height: 20,
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