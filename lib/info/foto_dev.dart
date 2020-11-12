import 'package:flutter/material.dart';

Container fotoDev(){
  return Container(
    height: 150,
    padding: EdgeInsets.all(10),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(120),
    child: 
      Image.asset(
        'assets/foto_dev.jpg',
        scale: 1,
        fit: BoxFit.scaleDown,
      )
    ),
  );
} 