import 'package:flutter/material.dart';

Text aguaText(String texto, {double tamanho = 14, Color cor = Colors.white}){
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