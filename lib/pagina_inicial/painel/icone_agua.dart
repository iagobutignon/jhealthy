import 'package:flutter/material.dart';

Container iconeAgua(){
  return Container(
    height: 150,
    padding: EdgeInsets.all(10),
    child: ClipRRect(
    child: 
      Image.asset(
        'assets/beber_agua.png',
        scale: 1,
        fit: BoxFit.scaleDown,
      )
    ),
  );
} 