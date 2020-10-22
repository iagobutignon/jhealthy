import 'package:flutter/material.dart';
import 'package:jhealthy/cadastro_medidas/informacoes_pessoais.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'cadastro_medidas_app_bar.dart';
import 'botao_confirmar.dart';
import 'form_medidas.dart';

class CadastroMedidas extends StatelessWidget {
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
                informacoesPessoais(),
                separador(10),
                formMedidas(),
                separador(20),
                botaoConfirmar()
              ],),
          ),
      )
    );
  }
}
