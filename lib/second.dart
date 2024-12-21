// ignore_for_file: camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';

class Foguete {
  int id;
  String missao = "";
  String texto = "";
  Color color;
  String horario = "";
  String local = "";
  String imagem = "";
  Foguete(this.id, this.missao, this.texto, this.color, this.horario,
      this.local, this.imagem);
}

class lancamentosFoguetes extends StatelessWidget {
  int id;
  String missao = "";
  String texto = "";
  String horario = "";
  String local = "";
  String imagem = "";

  lancamentosFoguetes(
      this.id, this.missao, this.texto, this.horario, this.local, this.imagem);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              child: Center(
            child: Text(
              '$texto',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )),
          Padding(
            padding: EdgeInsets.all(3.0),
          ),
          Flexible(
              child: Center(
            child: Text(
              '$local',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )),
          Padding(
            padding: EdgeInsets.all(3.0),
          ),
          Flexible(
              child: Center(
            child: Text(
              '$horario',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )),
          Padding(
            padding: EdgeInsets.all(3.0),
          ),
          Image.asset(
            '$imagem',
            height: 400,
            width: 400,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName));
              },
              child: const Text('Voltar'),
            ),
          ),
        ],
      ),

      /* body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Text(
                  texto,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.0),
              ),
              Image.asset(imagem, height: 150, width: 150),
              ElevatedButton(
                child: Text(
                  "Voltar",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.popUntil(
                      context, ModalRoute.withName(Navigator.defaultRouteName));
                },
              ),
              Padding(padding: EdgeInsets.all(15)),
            ],
          )
        ],
      ),*/
    );
  }
}
