import 'package:flutter/material.dart';
import 'package:jhealthy/dieta/botao_salvar.dart';
import 'package:jhealthy/dieta/dieta_text.dart';
import 'package:jhealthy/dieta/help_dieta.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'package:jhealthy/widgets/texto.dart';
import 'app_bar.dart';
import 'dieta_text_field.dart';

class Dieta extends StatefulWidget {
  @override
  _Dieta createState() => new _Dieta();
}

class _Dieta extends State<Dieta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        titulo: "Dieta",
        nav: () => { Navigator.pushNamed(context, '/configurar_dieta')},
        ajuda: () => { helpDieta(context)}),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(200, 143, 204, 124),
        child: 
          SingleChildScrollView(
            child: Column(
              children: [
                texto(
                  texto: "Adicionar refeição",
                  tamanho: 20,
                  cor: Colors.white
                ),
                separador(30),
                dietaText("Proteínas (gramas)"),
                dietaTextField(),
                separador(10),
                dietaText("Carboidratos (gramas)"),
                dietaTextField(),
                separador(10),
                dietaText("Lipídios (gramas)"),
                dietaTextField(),
                separador(20),
                botaoSalvar(nav: () => Navigator.pop(context)),
              ],
            ),
          ),
      ),
    );
  }
}
