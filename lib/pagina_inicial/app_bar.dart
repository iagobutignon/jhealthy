import 'package:flutter/material.dart';
import 'package:jhealthy/alert_dialogs/sair_app_alert.dart';

AppBar appBar({String title, nav, info, context}) {
  return AppBar(
      title: Center(child: Text('jHealthy')),
      leading: new Container(
        child: IconButton(
          icon: const Icon(Icons.logout, size: 40),
          tooltip: "Sair",
          onPressed: () => {sairAppAlert(context, nav)}, //nav,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.info_outlined, size: 40),
          tooltip: "Sair",
          onPressed: info,
        ),
      ],
      backgroundColor: Color.fromARGB(255, 240, 152, 0));
}
