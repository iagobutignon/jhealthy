import 'package:flutter/material.dart';
import 'package:jhealthy/dieta/configurar_dieta/configurar_dieta.dart';
import 'package:jhealthy/login/login.dart';
import 'package:jhealthy/pagina_inicial/pagina_inicial.dart';
import 'package:jhealthy/cadastro_usuario/cadastro_usuario.dart';
import 'package:jhealthy/cadastro_medidas/cadastro_medidas.dart';
import 'package:jhealthy/agua/agua.dart';
import 'package:jhealthy/dieta/dieta.dart';
import 'package:jhealthy/treino/treino.dart';
import 'package:jhealthy/treino/novo_treino/novo_treino.dart';

import 'info/info.dart';

void main() {
  runApp(MaterialApp(
      title: "jHealthy",
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/pagina_inicial': (context) => PaginaInicial(),
        '/cadastro_usuario': (context) => CadastroUsuario(),
        '/cadastro_medidas': (context) => CadastroMedidas(),
        '/agua': (context) => Agua(),
        '/dieta': (context) => Dieta(),
        '/treino': (context) => Treino(),
        '/info' : (context) => Info(),
        '/novo_treino' : (context) => NovoTreino(),
        '/configurar_dieta' : (context) => ConfigurarDieta()
      }));
}
