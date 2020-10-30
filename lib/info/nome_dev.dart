import 'package:flutter/material.dart';

Container nomeDev() {
  return Container(
    child: 
      Center(
        child: 
          Text(
            "Desenvolvedor: " +
            "Iago de Carvalho Butignon",
            style: 
              new TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
          )
      )
  );
}
