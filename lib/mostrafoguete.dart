import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'foguete.dart';
import 'main.dart';

class foguete extends StatefulWidget {
  const foguete({super.key});
  @override
  State<foguete> createState() => _fogueteState();
}

class _fogueteState extends State<foguete> {
  TextEditingController cname = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  Future<List<Foguete>> getData() async {
    final response = await http.get(
        Uri.parse("http://localhost/flutter_crudest/getfoguete.php")
            .replace(queryParameters: {'nome': cname.text}));
    List est = json.decode(response.body);
    return est.map((foguete) => Foguete.fromJson(foguete)).toList();
  }

  Widget mostraLista(List<Foguete> list1) {
    return ListView.builder(
        itemCount: list1.length,
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: Icon(Icons.gamepad),
            title: Text(list1[i].nome),
            subtitle: Text(list1[i].nome_foguete),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking de Patentes'),
      ),
      body: FutureBuilder<List<Foguete>>(
        future: getData(),
        builder: (ctx, ss) {
          if (ss.hasData) {
            List<Foguete> list1 = ss.data!;
            return mostraLista(list1);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => MyApp())));
        },
        label: const Text('Voltar'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
