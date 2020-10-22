import 'package:flutter/material.dart';

AppBar appBar({String title, nav}) {
  return AppBar(
      title: Center(child: Text('jHealthy')),
      leading: new Container(),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.logout, size: 40),
          tooltip: "Sair",
          onPressed: nav,
        ),
      ],
      backgroundColor: Color.fromARGB(255, 240, 152, 0)
    );
}
