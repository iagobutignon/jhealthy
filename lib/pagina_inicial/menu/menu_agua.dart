import 'package:flutter/material.dart';

GestureDetector menuAgua({nav}) {
  return GestureDetector(
    onTap: nav,
    child: Container(
      height: 50,
      width: 120,
      color: Colors.blue,
      child: const Center(
          child: Text('Água',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
    ),
  );
}
