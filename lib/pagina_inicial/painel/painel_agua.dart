import 'package:flutter/material.dart';

Container painelAgua() {
  return Container(
    height: 35,
    child: ListView(
      children: [
        Text(
          "Copos de água",
          style: 
            new TextStyle(
              fontWeight: FontWeight.bold  
            ),
        ),
        Text("Você bebeu 3 de 7 copos de água")
      ],
    ),
  );
}
