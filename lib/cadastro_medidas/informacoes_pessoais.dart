import 'package:flutter/material.dart';
import 'package:jhealthy/cadastro_medidas/cadastro_medidas_text.dart';
import 'package:jhealthy/cadastro_medidas/cadastro_medidas_text_field.dart';
import 'package:jhealthy/widgets/separador.dart';

Container informacoesPessoais(idade, peso, altura) {
  return Container(    
    child: 
      Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Idade"),
                    cadastroMedidasTextField(idade)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Peso"),
                    cadastroMedidasTextField(peso)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Altura"),
                    cadastroMedidasTextField(altura)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
  );
}
