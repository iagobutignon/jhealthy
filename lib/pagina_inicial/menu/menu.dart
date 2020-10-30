import 'package:flutter/material.dart';
import 'package:jhealthy/pagina_inicial/menu/menu_agua.dart';
import 'package:jhealthy/pagina_inicial/menu/menu_dieta.dart';
import 'package:jhealthy/pagina_inicial/menu/menu_treino.dart';

Container menu({item1, item2, item3}){
  return Container(
    height: 80,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        menuAgua(nav: item1),
        menuDieta(nav: item2),
        menuTreino(nav: item3),
      ]
    ),
  );
}