import 'package:flutter/material.dart';

TextField novoTreinoTextField(){
  return TextField(
    style: 
      new TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 240, 152, 0),
    ),
    decoration: new InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: InputBorder.none,
    ),
  );
}