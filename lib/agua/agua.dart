import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jhealthy/agua/agua_text_field.dart';
import 'package:jhealthy/agua/help_agua.dart';
import 'package:jhealthy/agua/notificacao_agua.dart';
import 'package:jhealthy/model/aguaModel.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'package:jhealthy/agua/app_bar.dart';
import 'agua_text.dart';
import 'botao_salvar.dart';

class Agua extends StatefulWidget {
  @override
  _Agua createState() => new _Agua();
}

class _Agua extends State<Agua> {
  var db = FirebaseFirestore.instance;
  var meta = TextEditingController();
  var copo = TextEditingController();

  void salvar(){
    db.collection('agua').add({
      "meta": meta.text,
      "copo": copo.text
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: appBar(
        titulo: 'Água',
        ajuda: () => helpAgua(context),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(200, 152, 227, 247),
        child: 
          SingleChildScrollView(
            child: Column(
              children: [
                aguaText("Meta diária (mililitros)"),
                aguaTextField(meta),
                separador(10),
                aguaText("Quantidade de ml do seu copo/garrafa"),
                aguaTextField(copo),
                separador(10),
                notificacaoAgua(),
                separador(20),
                botaoSalvar(nav: () => salvar()),
              ],
            ),
          ),
      ),
    );
  }
}
