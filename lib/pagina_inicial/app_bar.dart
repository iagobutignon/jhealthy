import 'package:flutter/material.dart';

AppBar appBar({String title, nav, info}) {
  return AppBar(
      title: Center(child: Text('jHealthy')),
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
        IconButton(
          icon: const Icon(Icons.info_outlined, size: 40),
          tooltip: "Sair",
          onPressed: info,
        ),
      ],
      backgroundColor: Color.fromARGB(255, 240, 152, 0)
    );
}
