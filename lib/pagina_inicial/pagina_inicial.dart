import 'package:flutter/material.dart';
import 'package:jhealthy/pagina_inicial/app_bar.dart';
import 'package:jhealthy/pagina_inicial/menu/menu.dart';
import 'package:jhealthy/pagina_inicial/painel/painel.dart';
import 'package:jhealthy/widgets/separador.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'jHealthy', nav: () => Navigator.pop(context)),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            painel(),
            separador(h: 10),
            menu(
              item1: () => Navigator.pushNamed(context, "/agua"),
              item2: () => Navigator.pushNamed(context, "/dieta"),
              item3: () => Navigator.pushNamed(context, "/treino")
            )
          ],
        ),
      )
    );
  }
}
