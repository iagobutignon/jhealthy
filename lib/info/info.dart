import 'package:flutter/material.dart';
import 'package:jhealthy/info/descricao_app.dart';
import 'package:jhealthy/info/foto_dev.dart';
import 'package:jhealthy/widgets/separador.dart';
import 'info_appbar.dart';
import 'nome_dev.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: infoAppBar(title: 'Sobre o aplicativo'),
      body: Container(
        child:        
          SingleChildScrollView(
            child: Column(
              children: [
                separador(10),
                nomeDev(),
                separador(20),
                fotoDev(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: descricaoApp(),
                )
              ],
            ),
          ),
      ),
    );
  }
}
