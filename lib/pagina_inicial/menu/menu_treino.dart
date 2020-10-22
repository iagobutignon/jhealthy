import 'package:flutter/material.dart';

GestureDetector menuTreino({nav}) {
  return GestureDetector(
    onTap: nav,
    child: Container(
      height: 50,
      width: 120,
      color: Color.fromARGB(255, 240, 152, 0),
      child: const Center(
          child: Text('Treino',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
    ),
  );
}
