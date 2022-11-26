import 'package:flutter/material.dart';
import 'package:flutter_teste/resposta.dart';
import './questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaIncrement;
  final void Function(int nota) responder;

  const Questionario({
    required this.perguntas,
    required this.perguntaIncrement,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        perguntas[perguntaIncrement].cast()["respostas"];

    return Column(children: [
      Questao(perguntas[perguntaIncrement]["texto"].toString()),
      ...respostas
          .map((resp) => Resposta(
              resp.cast()['Texto'], () => responder(resp.cast()["Nota"])))
          .toList()

      // os tres pontos significa que todos os elementos da lista serão adcionados
    ]);
  }
}
