import 'package:flutter/material.dart';

RaisedButton botaoAvancar({nav}) {
  return RaisedButton(
    onPressed: nav,
    textColor: Colors.white,
    color: Color.fromARGB(255, 240, 152, 0),
    padding: const EdgeInsets.fromLTRB(80,20,80,20),
    child: const Text('Avançar', style: TextStyle(fontSize: 20)),
  );
}
