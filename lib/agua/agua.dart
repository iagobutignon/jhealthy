import 'package:flutter/material.dart';
import 'package:jhealthy/agua/agua_text_field.dart';
import 'package:jhealthy/widgets/separador.dart';

import 'agua_text.dart';
import 'botao_salvar.dart';

class Agua extends StatefulWidget {
  @override
  _Agua createState() => new _Agua();
}

class _Agua extends State<Agua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Água'),
          backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(200, 152, 227, 247),
        child: 
          Column(
            children: [
              aguaText("Meta diária (mililitros)"),
              aguaTextField(),
              separador(10),
              aguaText("Quantidade de ml do seu copo/garrafa"),
              aguaTextField(),
              separador(20),
              botaoSalvar(nav: () => Navigator.pop(context)),
            ],
          ),
      ),
    );
  }
}
