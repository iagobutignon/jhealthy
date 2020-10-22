import 'package:flutter/material.dart';

Container painelDieta() {
  return Container(
    height: 80,
    child: ListView(
      children: [
        Text(
          "Contagem de macronutrientes",
          style: 
            new TextStyle(
              fontWeight: FontWeight.bold  
            ),
        ),
        Text(
          "Proteínas: 80/200"
        ),
        Text(
          "Carboidratos: 500/1000"
        ),
        Text(
          "Lipídios: 120/300"
        ),        
      ],
    ),
  );
}
