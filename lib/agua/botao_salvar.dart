import 'package:flutter/material.dart';

RaisedButton botaoSalvar({nav}){
  return RaisedButton(
    onPressed: nav,
    textColor: Colors.white,
    color: Colors.blue,
    padding: const EdgeInsets.fromLTRB(80,20,80,20),
    child: const Text('Salvar', style: TextStyle(fontSize: 20)),
  );
}