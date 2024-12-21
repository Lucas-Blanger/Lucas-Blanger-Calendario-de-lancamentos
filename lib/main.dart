// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foguetes2/inscricao.dart';
import 'package:foguetes2/mostrafoguete.dart';
import 'verificacao.dart';
import 'loja.dart';
import 'info.dart';
import 'exploracao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fogutes-INFO',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Fogutes-INFO'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.rocket),
              tooltip: 'Exploração Espacial',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => exploracao()));
              }),
          IconButton(
              icon: const Icon(Icons.local_grocery_store),
              tooltip: 'Lojinha',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => loja()));
              }),
        ],
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Flexible(
              child: Text(
                'BEM-VINDO AO Foguetes-info',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Flexible(
              child: Text(
                'O seu portal de notícias de foguetes',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Image.asset(
              'images/foguetes-info.png',
              height: 400,
              width: 400,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 11, 172, 78),
                  elevation: 15,
                  shadowColor: Colors.green),
              child: Text(
                'Informações sobre lançamentos',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => info()));
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 11, 172, 78),
                  elevation: 15,
                  shadowColor: Colors.green),
              child: Text(
                'Cadastrar lançamento',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => inscricao()));
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 11, 172, 78),
                  elevation: 15,
                  shadowColor: Colors.green),
              child: Text(
                'Loja',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => loja()));
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 11, 172, 78),
                  elevation: 15,
                  shadowColor: Colors.green),
              child: Text(
                'Ver lançamentos em análises',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => foguete()));
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
