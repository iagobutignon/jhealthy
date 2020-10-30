import 'package:flutter/material.dart';

AppBar appBar({String titulo, nav, ajuda}) {
  return AppBar(
      title: Center(child: Text(titulo)),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings, size: 40),
          tooltip: "Configurar",
          onPressed: nav,
        ),
        IconButton(
          icon: const Icon(Icons.help_outline_outlined, size: 40),
          tooltip: "Ajuda",
          onPressed: ajuda,
        ),
      ],
      backgroundColor: Colors.green,
    );
}
