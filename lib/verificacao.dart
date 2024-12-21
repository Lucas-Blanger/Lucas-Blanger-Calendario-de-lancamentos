// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_initializing_formals, prefer_const_constructors

import 'dart:html';
import 'main.dart';

import 'package:flutter/material.dart';

class verificacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cronograma de Lançamentos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(30.0)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Flexible(
                  child: Text(
                    'MUITO OBRIGADO!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Flexible(
                  child: Text(
                    'A sua sugestão de lançamento será avaliada pela nossa equipe e logo mais estará na aba de informações sobre lançamento',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // ignore: dead_code
  }
}
