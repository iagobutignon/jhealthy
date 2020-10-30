import 'package:flutter/material.dart';

Container logo(){
  return Container(
    height: 150,
    padding: EdgeInsets.all(10),
    child: ClipRRect(
    child: 
      Image.asset(
        'assets/logo.png',
        scale: 1,
        fit: BoxFit.scaleDown,
      )
    ),
  );
} 