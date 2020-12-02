import 'package:flutter/material.dart';

loginInvalido(BuildContext context) 
{ 
  Widget botao = FlatButton(
    child: Text("Ok"),
    onPressed: () => { Navigator.of(context).pop() },
  );
  AlertDialog alerta = AlertDialog(
    title: Text("Erro de login"),
    content: Text("Usuário ou senha inválidos"),
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