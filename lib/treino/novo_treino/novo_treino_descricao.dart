import 'package:flutter/material.dart';

TextField novoTreinoDescricao(control){
  return TextField(
    keyboardType: TextInputType.multiline,    
    maxLines: 10,    
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
    controller: control,
  );
}