import 'package:comunicacao/comunicacao-indireta/filho_com_indireta.dart';
import 'package:flutter/material.dart';

class PaiComunicacaoIndireta extends StatefulWidget {
  const PaiComunicacaoIndireta({Key? key}) : super(key: key);

  @override
  State<PaiComunicacaoIndireta> createState() => _PaiComunicacaoIndiretaState();
}

class _PaiComunicacaoIndiretaState extends State<PaiComunicacaoIndireta> {
  int number = 0;
  void delta(int delta) {
    setState(() {
      number += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        FilhoComunicacaoIndireta(
          onChange: delta,
        ),
      ],
    );
  }
}
