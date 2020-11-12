import 'package:flutter/material.dart';

Container notificacaoAgua() {
  bool isSwitched = false;
  return Container(
    child: Row(
      children: [
        Text("Ativar notificações de lembrete"),
        Switch(
          value: isSwitched,
          onChanged: (value) {      
          },
          activeTrackColor: Colors.lightGreenAccent,
        ),
      ],
    ),
  );
}
