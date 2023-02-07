import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:scoped_model/scoped_model.dart';

import './BackgroundCollectedPage.dart';
import './BackgroundCollectingTask.dart';
import './ChatPage.dart';
import './DiscoveryPage.dart';
import './SelectBondedDevicePage.dart';
import './Menu.dart';
import './Login.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
// Pegando informações do TextField
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 200,
              width: 200,
              child: Image.asset("assets/image/logo_feedme.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: TextFormField(
                controller: _controllerNome,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                  labelText: "ID",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: TextFormField(
                obscureText: true,
                controller: _controllerSenha,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                  labelText: "Senha:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              ),

              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //atributo text para pegar o valor do controlador
              onPressed: () {
                final String nome = _controllerNome.text;
                final String senha = _controllerSenha.text;

                final Colaborador colaboradorNovo = Colaborador(nome, senha);
                print(colaboradorNovo);
              },
            ),
          ],
        ),
      ),
    );
    //String? nome = stdin.readLineSync();
  }
}

class Colaborador {
  final String nome;
  final String senha;

  Colaborador(
    this.nome,
    this.senha,
  );
  @override
  String toString() {
    return 'Colaborador{nome: $nome, senha:$senha}';
  }
}
