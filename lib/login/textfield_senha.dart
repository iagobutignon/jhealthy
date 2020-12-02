import 'package:flutter/material.dart';

TextField textfieldSenha(senhaController) {
  return TextField(
    obscureText: true,
    enableSuggestions: false,
    autocorrect: false,
    style: new TextStyle(
      fontSize: 22,
      color: Color.fromARGB(255, 240, 152, 0),
      backgroundColor: Colors.white),
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: InputBorder.none,
    ),
    controller: senhaController,
  );
}
