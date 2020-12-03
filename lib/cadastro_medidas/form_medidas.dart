import 'package:flutter/material.dart';
import 'package:jhealthy/cadastro_medidas/cadastro_medidas_text.dart';
import 'package:jhealthy/cadastro_medidas/cadastro_medidas_text_field.dart';
import 'package:jhealthy/widgets/separador.dart';

Container formMedidas(ombro, torax, bracoDireito, bracoEsquerdo, antebracoDireito, antebracoEsquerdo,
                  cintura, gluteo, coxaDireita, coxaEsquerda, panturrilhaDireita, panturrilhaEsquerda) {
  return Container(    
    child: 
      Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Ombro"),
                    cadastroMedidasTextField(ombro)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Tórax"),
                    cadastroMedidasTextField(torax)
                  ],
                ),
              ),              
            ],
          ),
          separador(10),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Braço direito"),
                    cadastroMedidasTextField(bracoDireito)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Braço esquerdo"),
                    cadastroMedidasTextField(bracoEsquerdo)
                  ],
                ),
              ),              
            ],
          ),
          separador(10),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Antebraço direito"),
                    cadastroMedidasTextField(antebracoDireito)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Antebraço esquerdo"),
                    cadastroMedidasTextField(antebracoEsquerdo)
                  ],
                ),
              ),              
            ],
          ),
          separador(10),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Cintura"),
                    cadastroMedidasTextField(cintura)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Glúteo"),
                    cadastroMedidasTextField(gluteo)
                  ],
                ),
              ),              
            ],
          ),
          separador(10),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Coxa direita"),
                    cadastroMedidasTextField(coxaDireita)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Coxa esquerda"),
                    cadastroMedidasTextField(coxaEsquerda)
                  ],
                ),
              ),              
            ],
          ),
          separador(10),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Panturrilha Direita"),
                    cadastroMedidasTextField(panturrilhaDireita)
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Panturrilha esquerda"),
                    cadastroMedidasTextField(panturrilhaEsquerda)
                  ],
                ),
              ),              
            ],
          ),
        ],
      ),
  );
}
