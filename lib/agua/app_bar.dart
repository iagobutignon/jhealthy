import 'package:flutter/material.dart';

AppBar appBar({String titulo, ajuda}) {
  return AppBar(
      title: Center(child: Text(titulo)),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.help_outline_outlined, size: 40),
          tooltip: "Ajuda",
          onPressed: ajuda,
        ),
      ],
      backgroundColor: Colors.blue,
    );
}
