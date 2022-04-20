// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _senha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,        
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text){
                    _email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){
                    _senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(                  
                    labelText: 'Senha',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15),
                RaisedButton(onPressed: () {
                  if(_email == 'lucas' && _senha == '123'){
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    print('inválido');
                  }
                }, child: Text('Acessar'),)
              ],
            ),
          )           
        ),
      ),
    );
  }
}
