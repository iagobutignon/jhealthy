import 'package:flutter/material.dart';

RaisedButton botaoEntrar({nav}) {
  return RaisedButton(
    onPressed: nav,
    textColor: Color.fromARGB(255, 240, 152, 0),
    color: Colors.white,
    padding: const EdgeInsets.all(10),
    child: const Text('Entrar', style: TextStyle(fontSize: 20)),
  );
}
