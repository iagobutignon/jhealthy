import 'package:flutter/material.dart';
import 'package:jhealthy/pagina_inicial/painel/icone_agua.dart';

AppBar appBar({String titulo, nav, info}) {
  return AppBar(
      title: Center(child: Text(titulo)),
      leading: 
        new Container(
          child:
            IconButton(
              icon: const Icon(Icons.logout, size: 40),
              tooltip: "Sair",
              onPressed: nav,
            ),
        ),
      actions: <Widget>[
        iconeAgua(),
        IconButton(
          icon: const Icon(Icons.info_outlined, size: 40),
          tooltip: "Informações",
          onPressed: info,
        ),
      ],
      backgroundColor: Color.fromARGB(255, 240, 152, 0)
    );
}
