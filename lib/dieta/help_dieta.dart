import 'package:flutter/material.dart';

helpDieta(BuildContext context) 
{ 
  Widget botao = FlatButton(
    child: Text("Ok"),
    onPressed: () => { Navigator.of(context).pop() },
  );
  AlertDialog alerta = AlertDialog(
    title: Text("Ajuda"),
    content: Text("Esta funcionalidade do aplicativo foi desenvolvida principalmente para os patricantes"
    + " da dieta flexível, com o objetivo de auxiliar na contagem dos macronutrientes diários!"),
    actions: [
      botao,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}