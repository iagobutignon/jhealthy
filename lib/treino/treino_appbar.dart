import 'package:flutter/material.dart';

AppBar treinoAppBar({String title}) {
  return AppBar(
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add, size: 40),
          tooltip: "Novo treino",
          onPressed: () => {}
        ),
      ],
      backgroundColor: Color.fromARGB(255, 240, 152, 0)
    );
}
