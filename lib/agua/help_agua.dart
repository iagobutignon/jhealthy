import 'package:flutter/material.dart';

helpAgua(BuildContext context) 
{ 
  Widget botao = FlatButton(
    child: Text("Ok"),
    onPressed: () => { Navigator.of(context).pop() },
  );
  AlertDialog alerta = AlertDialog(
    title: Text("Ajuda"),
    content: Text("Você pode configurar a quantidade de mililitros que cabem na garrafa/copo"
    + " que você utiliza normalmente, facilitando a contagem de agua consumida diariamente!"),
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