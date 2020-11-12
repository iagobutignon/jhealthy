import 'package:flutter/material.dart';

Text descricaoApp(){
  return Text(
    'O aplicativo jHealthy está sendo desenvolvido para proporcionar uma melhor qualidade de vida ' +
    'para os usuários, possibilitando que os mesmos possam configurar a quantidade de agua que ' +
    'precisam consumir por dia, podendo também ativar as notificações para receber lembretes. \n' +
    'Também é útil pra quem quer emagrecer, ou ganhar massa muscular, pois permite configurar os ' +
    'macronutrientes necessários para uma dieta, e acompanhar a contagem diária dos mesmos com maior ' +
    'facilidades, além de permitir também criar uma lista de treinos semanais'
    ,
    style: 
      new TextStyle(
        fontSize: 14,
        color: Colors.black,
    ),
  );
}