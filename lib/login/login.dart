import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jhealthy/login/logo.dart';
import 'package:jhealthy/model/usuario.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'package:jhealthy/widgets/texto.dart';
import 'package:jhealthy/login/textfield_usuario.dart';
import 'package:jhealthy/login/textfield_senha.dart';
import 'package:jhealthy/login/botao_entrar.dart';
import 'package:jhealthy/login/text_cadastrar.dart';

import 'mensagem.dart';

const BRANCO = Colors.white;

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  var db = FirebaseFirestore.instance;
  var usuario = TextEditingController();
  var senha = TextEditingController();
  List<Usuario> usuarios = List();

  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

    listen?.cancel();
    listen = db.collection("usuarios").snapshots().listen((res) {
      setState(() {
        usuarios =
            res.docs.map((e) => Usuario.fromMap(e.data(), e.id)).toList();
      });
    });
  }

  void entrar() {
    bool login = false;
    for (int i = 0; i < usuarios.length; i++) {
      if (usuarios[i].usuario == usuario.text && usuarios[i].senha == senha.text) {
        login = true;
      }
    }
    if (login) {
      Navigator.pushNamed(context, '/pagina_inicial');
    } else {
      loginInvalido(context);
    }
  }

  void cadastrar() {
    Navigator.pushNamed(context, "/cadastro_usuario");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(60),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 240, 152, 0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            separador(0),
            logo(),
            separador(0),
            texto(texto: "Usuário", tamanho: 16, cor: BRANCO),
            textfieldUsuario(usuario),
            separador(20),
            texto(texto: "Senha", tamanho: 16, cor: BRANCO),
            textfieldSenha(senha),
            separador(40),
            botaoEntrar(nav: () => entrar()),
            separador(30),
            textCadastrar(nav: () => cadastrar()),
          ]),
        ),
    ));
  }
}
