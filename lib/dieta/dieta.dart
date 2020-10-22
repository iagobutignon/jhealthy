import 'package:flutter/material.dart';
import 'package:jhealthy/dieta/botao_salvar.dart';
import 'package:jhealthy/dieta/dieta_text.dart';
import 'package:jhealthy/widgets/separador.dart';

import 'dieta_text_field.dart';

class Dieta extends StatefulWidget {
  @override
  _Dieta createState() => new _Dieta();
}

class _Dieta extends State<Dieta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dieta'),
          backgroundColor: Colors.green
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(200, 143, 204, 124),
        child: 
          Column(
            children: [
              dietaText("Proteínas diária (gramas)"),
              dietaTextField(),
              separador(10),
              dietaText("Carboidratos diário (gramas)"),
              dietaTextField(),
              separador(10),
              dietaText("Lipídios diários (gramas)"),
              dietaTextField(),
              separador(20),
              botaoSalvar(nav: () => Navigator.pop(context)),
            ],
          ),
      ),
    );
  }
}
