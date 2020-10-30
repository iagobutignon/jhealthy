import 'package:flutter/material.dart';
import 'package:jhealthy/treino/menu/menu.dart';
import 'package:jhealthy/treino/treino_appbar.dart';
import 'package:jhealthy/widgets/separador.dart';

class Treino extends StatefulWidget {
  @override
  _Treino createState() => new _Treino();
}

class _Treino extends State<Treino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: treinoAppBar(
        title: 'Treino',
        nav: () => {Navigator.pushNamed(context, '/novo_treino')}
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Color.fromARGB(200, 252, 209, 134),
        height: double.infinity,
        child: 
          SingleChildScrollView(
            child: Column(
              children: [
                menu(),
                separador(30),
                Text('Nenhum treino cadastrado')
              ],
            ),
          ),
      ),
    );
  }
}
