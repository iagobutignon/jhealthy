import 'package:flutter/material.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_agua.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_dia.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_dieta.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_treino_realizado.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_treino_pendente.dart';
import 'package:jhealthy/widgets/separador.dart';

const H = 20;

Expanded painel() {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      color: Color.fromARGB(200, 252, 209, 134),
      child: Column(
        children: [
          painelDia(),
          separador(H),
          painelAgua(),
          separador(H),
          painelDieta(),
          separador(H),
          painelTreinoRealizado(),
          separador(H),
          painelTreinoPendente()
        ],
      ),
    ),
  );
}
