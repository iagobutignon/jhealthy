import 'package:flutter/material.dart';

RaisedButton botaoDia(String texto){
  return RaisedButton(
    onPressed: () => {},
    textColor: Colors.white,
    color: Color.fromARGB(255, 240, 152, 0),
    padding: const EdgeInsets.all(5),
    child: Text(texto, style: TextStyle(fontSize: 16)),
  );
}