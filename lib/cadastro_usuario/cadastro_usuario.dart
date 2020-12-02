import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jhealthy/cadastro_usuario/cadastro_sexo.dart';
import 'package:jhealthy/cadastro_usuario/cadastro_text_field.dart';
import 'package:jhealthy/model/usuario.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'botao_avancar.dart';
import 'cadastro_invalido.dart';
import 'cadastro_text.dart';
import 'cadastro_usuario_app_bar.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuario createState() => _CadastroUsuario();
}

class _CadastroUsuario extends State<CadastroUsuario> {
  var db = FirebaseFirestore.instance;
  var usuario = TextEditingController();
  var senha = TextEditingController();
  var confirmarSenha = TextEditingController();
  var sexo = TextEditingController();
  var nome = TextEditingController();
  var email = TextEditingController();
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

  void avancar() {
    bool validado = true;

    for (int i = 0; i < usuarios.length; i++) {
      if (usuarios[i].usuario == usuario.text) {
        cadastroInvalido(context, "Usuário já cadastrado!");
        validado = false;
      }
      if (usuarios[i].email == email.text) {
        cadastroInvalido(context, "E-mail já cadastrado!");
        validado = false;
      }
    }
    if (senha.text != confirmarSenha.text) {
      validado = false;
      cadastroInvalido(context, "Senhas divergentes!");
    }
    if (validado) {
      db.collection("usuarios").add({
        "usuario": usuario.text,
        "senha": senha.text,
        "sexo": 0,
        "nome": nome.text,
        "email": email.text,
      });
      Navigator.pushNamed(context, "/cadastro_medidas");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: cadastroUsuarioAppBar(title: 'Cadastro'),
        body: Container(
            color: Color.fromARGB(200, 252, 209, 134),
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  cadastroText("Usuário"),
                  cadastroTextField(usuario),
                  separador(10),
                  cadastroText("Senha"),
                  cadastroTextField(senha, senha: true),
                  separador(10),
                  cadastroText("Confirmar senha"),
                  cadastroTextField(confirmarSenha, senha: true),
                  separador(10),
                  cadastroSexo(),
                  separador(10),
                  cadastroText("Nome"),
                  cadastroTextField(nome),
                  separador(10),
                  cadastroText("Email"),
                  cadastroTextField(email),
                  separador(20),
                  botaoAvancar(nav: () => avancar()),
                ],
              ),
            )));
  }
}
