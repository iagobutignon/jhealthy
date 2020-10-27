import 'package:flutter/material.dart';

sairAppAlert(BuildContext context, nav) {
  Widget cancelaButton = FlatButton(
    child: Text("Não"),
    onPressed: () => {
      Navigator.of(context).pop()
    },
  );
  Widget continuaButton = FlatButton(
    child: Text("Sim"),
    onPressed: nav,
  );
  //configura o AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Atenção!"),
    content: Text("Deseja sair do aplicativo?"),
    actions: [
      cancelaButton,
      continuaButton,
    ],
  );
  //exibe o diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}