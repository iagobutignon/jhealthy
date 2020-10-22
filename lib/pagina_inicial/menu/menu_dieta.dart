import 'package:flutter/material.dart';

GestureDetector menuDieta({nav}) {
  return GestureDetector(
    onTap: nav,
    child: Container(
      height: 50,
      width: 120,
      color: Colors.green,
      child: const Center(
          child: Text('Dieta',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
    ),
  );
}
