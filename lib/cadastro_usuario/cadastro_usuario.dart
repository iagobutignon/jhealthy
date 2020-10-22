import 'package:flutter/material.dart';
import 'botao_avancar.dart';
import 'cadastro_usuario_app_bar.dart';

class CadastroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cadastroUsuarioAppBar(title: 'Cadastro'),
      body: Container(
        child:
          Column(
            children: [
              botaoAvancar(nav: () => Navigator.pushNamed(context, "/cadastro_medidas")),
            ],
          ) 
      )
    );
  }
}
