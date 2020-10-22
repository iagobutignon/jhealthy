import 'package:flutter/material.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_agua.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_dia.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_dieta.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_treino_realizado.dart';
import 'package:jhealthy/pagina_inicial/painel/painel_treino_pendente.dart';
import 'package:jhealthy/widgets/separador.dart';

const H = 20;

Container painel() {
  return Container(
    padding: EdgeInsets.all(20),
    height: 400,
    width: double.infinity,
    color: Color.fromARGB(200, 252, 209, 134),
    child: Column(
      children: [
        painelDia(),
        separador(h: H),
        painelAgua(),
        separador(h: H),
        painelDieta(),
        separador(h: H),
        painelTreinoRealizado(),
        separador(h: H),
        painelTreinoPendente()
      ],
    ),
  );
}
