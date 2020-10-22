import 'package:flutter/material.dart';

TextField textfieldUsuario() {
  return TextField(
    style: new TextStyle(
      fontSize: 22,
      color: Color.fromARGB(255, 240, 152, 0),
      backgroundColor: Colors.white),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: InputBorder.none,
    ),
  );
}
