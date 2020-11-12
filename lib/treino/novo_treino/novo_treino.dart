import 'package:flutter/material.dart';
import 'package:jhealthy/treino/novo_treino/botao_salvar.dart';
import 'package:jhealthy/treino/novo_treino/novo_treino_descricao.dart';
import 'package:jhealthy/treino/novo_treino/novo_treino_text.dart';
import 'package:jhealthy/treino/novo_treino/novo_treino_textfield.dart';
import 'package:jhealthy/widgets/separador.dart';

class NovoTreino extends StatefulWidget {
  @override
  _NovoTreino createState() => new _NovoTreino();
}

class _NovoTreino extends State<NovoTreino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        title: Text("Novo Treino"),
        backgroundColor: Color.fromARGB(255, 240, 152, 0),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(200, 252, 209, 134),
        child: 
          SingleChildScrollView(
            child: Column(
              children: [
                novoTreinoText("Título"),
                novoTreinoTextField(),
                separador(10),
                novoTreinoText("Descrição"),
                novoTreinoDescricao(),
                separador(20),
                botaoSalvar(nav: () => Navigator.pop(context)),
              ],
            ),
          ),
      ),
    );
  }
}
