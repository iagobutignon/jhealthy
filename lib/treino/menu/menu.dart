import 'package:flutter/material.dart';
import 'package:jhealthy/treino/menu/botao_dia.dart';
import 'package:jhealthy/widgets/separador.dart';

Container menu({item1, item2, item3}){
  return Container(
    height: 50,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        botaoDia('Dom'),
        separador(0,10),
        botaoDia('Seg'),
        separador(0,10),
        botaoDia('Ter'),
        separador(0,10),
        botaoDia('Qua'),
        separador(0,10),
        botaoDia('Qui'),
        separador(0,10),
        botaoDia('Sex'),
        separador(0,10),
        botaoDia('Sáb'),
      ]
    ),
  );
}