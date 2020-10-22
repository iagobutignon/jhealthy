import 'package:flutter/material.dart';

TextField aguaTextField(){
  return TextField(
    style: 
      new TextStyle(
        fontSize: 18,
        color: Colors.blue,
    ),
    decoration: new InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: InputBorder.none,
    ),
  );
}