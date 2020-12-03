import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jhealthy/dieta/botao_salvar.dart';
import 'package:jhealthy/dieta/dieta_text.dart';
import 'package:jhealthy/dieta/help_dieta.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'package:jhealthy/dieta/app_bar.dart';
import 'package:jhealthy/dieta/dieta_text_field.dart';

class ConfigurarDieta extends StatefulWidget {
  @override
  _ConfigurarDieta createState() => new _ConfigurarDieta();
}

class _ConfigurarDieta extends State<ConfigurarDieta> {
  var db = FirebaseFirestore.instance;
  var proteina = TextEditingController();
  var carboidrato = TextEditingController();
  var lipidio = TextEditingController();

  void salvar(){
    db.collection('configurar_dieta').add({
      'proteina_diaria': proteina.text,
      'carboidrato_diario': carboidrato.text,
      'lipidio_diario': lipidio.text
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurar Dieta'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(200, 143, 204, 124),
        child: 
          SingleChildScrollView(
            child: Column(
              children: [
                dietaText("Proteínas diária (gramas)"),
                dietaTextField(proteina),
                separador(10),
                dietaText("Carboidratos diário (gramas)"),
                dietaTextField(carboidrato),
                separador(10),
                dietaText("Lipídios diários (gramas)"),
                dietaTextField(lipidio),
                separador(20),
                botaoSalvar(nav: () => {salvar()}),
              ],
            ),
          ),
      ),
    );
  }
}
