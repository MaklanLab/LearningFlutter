import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Finalizando extends StatelessWidget {
  final void Function() whenSelected;
  int notaFinal = 0;
  Finalizando(this.whenSelected, this.notaFinal);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: double.infinity,
      child: Column(children: [
        Questao("Você finalizou parabens"),
        Resposta("Reiniciar", whenSelected),
        Questao("Sua nota final é $notaFinal")
      ]),
    ));
  }
}
