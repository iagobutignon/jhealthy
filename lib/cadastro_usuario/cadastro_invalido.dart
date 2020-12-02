import 'package:flutter/material.dart';

cadastroInvalido(BuildContext context, mensagem) 
{ 
  Widget botao = FlatButton(
    child: Text("Ok"),
    onPressed: () => { Navigator.of(context).pop() },
  );
  AlertDialog alerta = AlertDialog(
    title: Text("Cadastro Inválido"),
    content: Text(mensagem),
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