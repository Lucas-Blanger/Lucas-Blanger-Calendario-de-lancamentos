// ignore_for_file: sized_box_for_whitespace, unnecessary_new, non_constant_identifier_names, prefer_const_constructors

import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:foguetes2/verificacao.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() {
  runApp(const inscricao());
}

class inscricao extends StatelessWidget {
  const inscricao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Cadastro de lançamento',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  inscricao_ createState() => inscricao_();
}

class inscricao_ extends State<HomePage> {
  Future<String> addfoguetes() async {
    var url = "http://localhost/flutter_crudest/addfoguetes.php";
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['nome_foguete'] = nome_foguete.text;
    request.fields['local_lancamento'] = local_lancamento.text;
    request.fields['nome'] = nome.text;
    request.fields['email'] = email.text;
    request.fields['telefone'] = telefone.text;

    var res = await request.send();
    return Future.value(res.reasonPhrase);
  }

  var temp = new Uint8List(500);
  TextEditingController nome_foguete = new TextEditingController();
  TextEditingController local_lancamento = new TextEditingController();
  TextEditingController nome = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController telefone = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  int id = 1;

  bool _isValid = false;
  String numberPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
  static final RegExp nameRegExp = RegExp('[a-zA-Z]');
  void _saveForm() {
    setState(() {
      _isValid = _formKey.currentState!.validate();
    });
    String number = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp NumberregExp = new RegExp(number);
  }

  MaskTextInputFormatter maskNumber =
      MaskTextInputFormatter(mask: '(##)#####-####');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 250, 95),
      appBar: AppBar(
        title: const Text('Cadastro de lançamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        // the Form here
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 300,
                child: TextFormField(
                  controller: nome,
                  decoration: const InputDecoration(
                    labelText: 'Nome completo:',
                    prefixIcon: Icon(Icons.abc),
                  ),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    // Check if this field is empty
                    if (value == null || value.isEmpty) {
                      return 'Este campo é obrigatório';
                    }

                    // using regular expression
                    if (!RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]')
                        .hasMatch(value)) {
                      return "Por favor, insira um nome válido";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 300,
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    // Check if this field is empty
                    if (value == null || value.isEmpty) {
                      return 'Este campo é obrigatório';
                    }

                    // using regular expression
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Por favor insira um endereço de e-mail válido";
                    }

                    // the email is valid
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 300,
                child: TextFormField(
                  controller: telefone,
                  decoration: const InputDecoration(
                    labelText: 'Númeto de telefone',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    // Check if this field is empty
                    if (value == null || value.isEmpty) {
                      return 'Este campo é obrigatório';
                    }

                    // using regular expression
                    if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                        .hasMatch(value)) {
                      return "Por favor insira um número de telefone válido";
                    }

                    // the email is valid
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 300,
                child: TextFormField(
                  controller: nome_foguete,
                  decoration: const InputDecoration(
                    labelText: 'Nome do foguete:',
                    prefixIcon: Icon(Icons.rocket),
                  ),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    // Check if this field is empty
                    if (value == null || value.isEmpty) {
                      return 'Este campo é obrigatório';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 300,
                child: TextFormField(
                  controller: local_lancamento,
                  decoration: const InputDecoration(
                    labelText: 'Local de lançamento:',
                    prefixIcon: Icon(Icons.location_on),
                  ),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    // Check if this field is empty
                    if (value == null || value.isEmpty) {
                      return 'Este campo é obrigatório';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    child: Text("Adicionar"),
                    onPressed: () {
                      if (_formKey.currentState!.validate() != null) {
                        addfoguetes();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => verificacao(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
