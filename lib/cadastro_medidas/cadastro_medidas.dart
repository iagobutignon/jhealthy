import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jhealthy/cadastro_medidas/informacoes_pessoais.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'cadastro_medidas_app_bar.dart';
import 'botao_confirmar.dart';
import 'form_medidas.dart';

class CadastroMedidas extends StatefulWidget {
  @override
  _CadastroMedidas createState() => _CadastroMedidas();
}

class _CadastroMedidas extends State<CadastroMedidas> {
  var db = FirebaseFirestore.instance;
  var idade = TextEditingController();
  var peso = TextEditingController();
  var altura = TextEditingController();
  var ombro = TextEditingController();
  var torax = TextEditingController();
  var bracoDireito = TextEditingController();
  var bracoEsquerdo = TextEditingController();
  var antebracoDireito = TextEditingController();
  var antebracoEsquerdo = TextEditingController();
  var cintura = TextEditingController();
  var gluteo = TextEditingController();
  var coxaDireita = TextEditingController();
  var coxaEsquerda = TextEditingController();
  var panturrilhaDireita = TextEditingController();
  var panturrilhaEsquerda = TextEditingController();

  void confirmar(){
    db.collection("medidas").add({
      "idade": idade.text,
      "peso": peso.text,
      "altura" : altura.text,
      "ombro": ombro.text,
      "torax": torax.text,
      "braco_direito": bracoDireito.text,
      "braco_esquerdo": bracoEsquerdo.text,
      "antebraco_direito": antebracoDireito.text,
      "antebraco_esquerdo": antebracoEsquerdo.text,
      "cintura": cintura.text,
      "gluteo": gluteo.text,
      "coxa_direita": coxaDireita.text,
      "coxa_esquerda": coxaEsquerda.text,
      "panturrilha_direita": panturrilhaDireita.text,
      "panturrilha_esquerda": panturrilhaEsquerda.text
    });
    Navigator.pushNamed(context, "/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cadastroMedidasAppBar(title: "Medidas"),
      body: Container(   
        color: Color.fromARGB(200, 252, 209, 134),
        padding: EdgeInsets.all(20),
        child: 
          SingleChildScrollView(
            child: Column(
              children: [              
                informacoesPessoais(idade, peso, altura),
                separador(10),
                formMedidas(ombro, torax, bracoDireito, bracoEsquerdo, antebracoDireito, antebracoEsquerdo,
                  cintura, gluteo, coxaDireita, coxaEsquerda, panturrilhaDireita, panturrilhaEsquerda),
                separador(20),
                botaoConfirmar(() => {confirmar()})
              ],),
          ),
      )
    );
  }
}
