import 'package:flutter/material.dart';
import 'package:jhealthy/cadastro_medidas/cadastro_medidas_text.dart';
import 'package:jhealthy/cadastro_medidas/cadastro_medidas_text_field.dart';
import 'package:jhealthy/widgets/separador.dart';

Container formMedidas() {
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
                    cadastroMedidasTextField()
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Tórax"),
                    cadastroMedidasTextField()
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
                    cadastroMedidasTextField()
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Braço esquerdo"),
                    cadastroMedidasTextField()
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
                    cadastroMedidasTextField()
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Antebraço esquerdo"),
                    cadastroMedidasTextField()
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
                    cadastroMedidasTextField()
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Glúteo"),
                    cadastroMedidasTextField()
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
                    cadastroMedidasTextField()
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Coxa esquerda"),
                    cadastroMedidasTextField()
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
                    cadastroMedidasTextField()
                  ],
                ),
              ),
              separador(0, 10),
              Expanded(
                child: Column(
                  children: [
                    cadastroMedidasText("Panturrilha esquerda"),
                    cadastroMedidasTextField()
                  ],
                ),
              ),              
            ],
          ),
        ],
      ),
  );
}
