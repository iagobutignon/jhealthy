import 'package:flutter/material.dart';
import 'package:jhealthy/info/foto_dev.dart';
import 'info_appbar.dart';
import 'nome_dev.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: infoAppBar(title: 'Sobre o aplicativo'),
      body: Container(
        height: 200,
        child:        
          Column(
            children: [
              nomeDev(),
              fotoDev()
            ],
          ),
      ),
    );
  }
}
