import 'package:cloud_firestore/cloud_firestore.dart';
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
  var db = FirebaseFirestore.instance;
  var titulo = TextEditingController();
  var descricao = TextEditingController();

  void getDocumentById(String id) async {
    await db.collection("treinos").doc(id).get().then((res) {
      titulo.text = res.data()['titulo'];
      descricao.text = res.data()['descricao'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context).settings.arguments;

    if (id != null) {
      if (titulo.text == '' && descricao.text == '') {
        getDocumentById(id);
      }
    }

    void salvar(){
      if (id == null){
        db.collection('treinos').add({
        'titulo': titulo.text,
        'descricao': descricao.text
      });
      }
      else{
        db.collection('treinos').doc(id).update({
        'titulo': titulo.text,
        'descricao': descricao.text
      });
      }
      
      Navigator.pop(context);
    }

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
                novoTreinoTextField(titulo),
                separador(10),
                novoTreinoText("Descrição"),
                novoTreinoDescricao(descricao),
                separador(20),
                botaoSalvar(nav: () => {salvar()}),
              ],
            ),
          ),
      ),
    );
  }
}
