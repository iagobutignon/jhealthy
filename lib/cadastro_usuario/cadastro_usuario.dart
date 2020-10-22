import 'package:flutter/material.dart';
import 'package:jhealthy/cadastro_usuario/cadastro_sexo.dart';
import 'package:jhealthy/cadastro_usuario/cadastro_text_field.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'botao_avancar.dart';
import 'cadastro_text.dart';
import 'cadastro_usuario_app_bar.dart';

class CadastroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cadastroUsuarioAppBar(title: 'Cadastro'),
      body: Container(
        color: Color.fromARGB(200, 252, 209, 134),
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child:
          SingleChildScrollView(
            child: Column(
              children: [
                cadastroText("Usuário"),
                cadastroTextField(),
                separador(10),
                cadastroText("Senha"),
                cadastroTextField(senha: true),
                separador(10),
                cadastroText("Confirmar senha"),
                cadastroTextField(senha: true),
                separador(10),
                cadastroSexo(),
                separador(10),
                cadastroText("Nome"),
                cadastroTextField(),
                separador(10),
                cadastroText("Email"),
                cadastroTextField(),
                separador(20),
                botaoAvancar(nav: () => Navigator.pushNamed(context, "/cadastro_medidas")),
              ],
            ),
          ) 
      )
    );
  }
}
