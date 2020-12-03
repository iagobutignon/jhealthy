import 'package:flutter/material.dart';

TextField dietaTextField(control){
  return TextField(
    style: 
      new TextStyle(
        fontSize: 18,
        color: Colors.green,
    ),
    decoration: new InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: InputBorder.none,
    ),
    controller: control,
  );
}