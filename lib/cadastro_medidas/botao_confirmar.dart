import 'package:flutter/material.dart';

RaisedButton botaoConfirmar() {
  return RaisedButton(
    onPressed: () {},
    textColor: Colors.white,
    color: Color.fromARGB(255, 240, 152, 0),
    padding: const EdgeInsets.fromLTRB(80,15,80,15),
    child: const Text('Confimar', style: TextStyle(fontSize: 18)),
  );
}
