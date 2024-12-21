// ignore_for_file: camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';

class Produto {
  int counter;
  double price;
  Color color;
  String descricao;
  String imagem;
  int quantidade;
  Produto(this.counter, this.descricao, this.imagem, this.color, this.price,
      this.quantidade);
}

class CarrinhoCompras extends StatelessWidget {
  String text;
  String image;
  double price;

  CarrinhoCompras(this.text, this.image, this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Text(
                'Total: R\$${price.toString()}',
                style: TextStyle(fontSize: 20),
              ),
              Image.asset(
                image,
                height: 100,
                width: 200,
              ),
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
      ),
    );
  }
}
