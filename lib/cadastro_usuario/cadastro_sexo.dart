import 'package:flutter/material.dart';

Container cadastroSexo() {
  return Container(
    child: Row(
      children: [
        Radio(
          value: 0,
          groupValue: -1,
          onChanged: null,
        ),
        Text(
          "Homem",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color.fromARGB(255, 240, 152, 0)),
        ),
        Radio(
          value: 1,
          groupValue: -1,
          onChanged: null,
        ),
        Text(
          "Mulher",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color.fromARGB(255, 240, 152, 0)),
        ),
      ],
    ),
  );
}
