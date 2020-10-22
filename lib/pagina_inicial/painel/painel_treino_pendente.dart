import 'package:flutter/material.dart';

Expanded painelTreinoPendente() {
  return Expanded(
    child: ListView(
      children: [
        Text(
          "Treinos pendentes",
          style: 
            new TextStyle(
              fontWeight: FontWeight.bold  
            ),
        ),
        Text("Musculação"),
      ],
    ),
  );
}
