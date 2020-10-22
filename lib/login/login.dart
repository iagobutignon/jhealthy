import 'package:flutter/material.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'package:jhealthy/widgets/texto.dart';
import 'package:jhealthy/login/textfield_usuario.dart';
import 'package:jhealthy/login/textfield_senha.dart';
import 'package:jhealthy/login/botao_entrar.dart';
import 'package:jhealthy/login/text_cadastrar.dart';

const BRANCO = Colors.white;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(60),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 240, 152, 0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            separador(h: 50),
            texto(texto: "jHealthy", tamanho: 60, cor: BRANCO),
            separador(h: 50),
            texto(texto: "Usuário", tamanho: 16, cor: BRANCO),
            textfieldUsuario(),
            separador(h: 20),
            texto(texto: "Senha", tamanho: 16, cor: BRANCO),
            textfieldSenha(),
            separador(h: 40),
            botaoEntrar(nav: () => Navigator.pushNamed(context, '/pagina_inicial')),
            separador(h: 30),
            textCadastrar(nav: () => Navigator.pushNamed(context, "/cadastro_usuario"))
          ]),
        ),
      )
    );
  }
}
