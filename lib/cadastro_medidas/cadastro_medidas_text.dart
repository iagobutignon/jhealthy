import 'package:flutter/material.dart';

Text cadastroMedidasText(String texto, {double tamanho = 14, Color cor = const Color.fromARGB(255, 240, 152, 0)}){
  return Text(
    texto,
    style: 
      new TextStyle(
        fontSize: tamanho,
        color: cor,
        fontWeight: FontWeight.bold
    ),
  );
}