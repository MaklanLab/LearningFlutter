import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './finalizando.dart';
import './questionario.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  int incrementresposta = 0;
  int notaGeral = 0;

  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'Texto': 'Leão', 'Nota': 10},
        {'Texto': 'Trigue', 'Nota': 7},
        {'Texto': 'Raposa', 'Nota': 8},
        {'Texto': 'Tubarão', 'Nota': 6},
      ]
    },
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'Texto': 'Preto', 'Nota': 9},
        {'Texto': 'Roxo', 'Nota': 3},
        {'Texto': 'Verde', 'Nota': 7},
        {'Texto': 'Amarelo', 'Nota': 5},
      ]
    },
    {
      'texto': 'Qual seu hobie fav?',
      'respostas': [
        {'Texto': 'Nadar', 'Nota': 8},
        {'Texto': 'Correr', 'Nota': 10},
        {'Texto': 'Comer', 'Nota': 5},
        {'Texto': 'Dormir', 'Nota': 2},
      ]
    }
  ];

  int responder(int nota) {
    setState(() {
      incrementresposta++;
      notaGeral += nota;
      print(notaGeral);
    });
    return incrementresposta;
  }

  bool temPerguntaSelecionada() {
    return incrementresposta < perguntas.length;
  }

  void reiniciar() {
    setState(() {
      incrementresposta = 0;
      notaGeral = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    MaterialApp material = MaterialApp();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
          ),
          body: Center(
            child: temPerguntaSelecionada()
                ? Questionario(
                    perguntas: perguntas,
                    perguntaIncrement: incrementresposta,
                    responder: responder)
                : Finalizando(reiniciar, notaGeral),
          )),
    );
  }
}
