import 'package:flutter/material.dart';

TextField cadastroMedidasTextField({bool senha = false}) {
  return TextField(
    obscureText: senha,
    enableSuggestions: !senha,
    autocorrect: !senha,
    style: new TextStyle(
        height: 1,
        fontSize: 18,
        color: Color.fromARGB(255, 240, 152, 0),
        backgroundColor: Colors.white),
    decoration: new InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
  );
}
