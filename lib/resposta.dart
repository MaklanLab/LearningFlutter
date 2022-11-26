import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() whenSelected;

  Resposta(this.texto, this.whenSelected) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(248, 44, 22, 22)),
        child: Text(texto),
        onPressed: whenSelected,
      ),
    );
  }
}
