import 'package:flutter/material.dart';

Expanded painelTreinoRealizado() {
  return Expanded(
    child: ListView(
      children: [
        Text(
          "Treinos realizados",
          style: 
            new TextStyle(
              fontWeight: FontWeight.bold  
            ),
        ),
        Text("Corrida"),
      ],
    ),
  );
}
