// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_initializing_formals, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class exploracao extends StatelessWidget {
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
                    'A exploração espacial, portanto, apoia a inovação e a prosperidade econômica, estimulando os avanços da ciência e da tecnologia, bem como motivando a força de trabalho científica e tecnológica global, ampliando assim a esfera da atividade econômica humana.',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset(
                  'images/benf.png',
                  height: 400,
                  width: 400,
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
