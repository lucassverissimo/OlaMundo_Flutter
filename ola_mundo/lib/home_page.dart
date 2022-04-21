import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'custom_swithcer.dart';

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

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _addItem() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: new Text("Item inserido"),
          content: new Text("Macarrão. Quantidade $_counter"),
        );
      },
    );
  }

  Widget circleImage( String img, double width, double height) {
    return Center(
      child : new Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(img)
            )
        ),
     ),
   );
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/images/perfil.jpg'),
              ),
              accountName: Text('Lucas Veríssimo'), 
              accountEmail: Text('lucas@lucas.com.br'),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de início'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ]),
        ),
        appBar: AppBar(
          title: Text("Adicionar na feira"),
          actions: [
            CustomSwitcher(),
            SizedBox(width: 20,),
            circleImage('assets/images/perfil.jpg', 20, 20),
            SizedBox(width: 20,),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: Icon(Icons.arrow_upward_outlined),
            onPressed: _incrementCounter,
            heroTag: null,
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_downward_outlined),
            onPressed: _decrementCounter,
            heroTag: null,
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _addItem,
            heroTag: null,
          )
        ]));
  }
}
