import 'package:flutter/material.dart';

GestureDetector textCadastrar({nav}) {
  return GestureDetector(
      onTap: nav,
      child: 
        new Text(
          "Não tem cadastro? Clique aqui",
          style: new TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.bold, 
            color: Colors.white
          ),
        )
  );
}
