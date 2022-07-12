import 'package:comunicacao/comunicacao-direta/filho_com_direta.dart';
import 'package:flutter/material.dart';

class PaiComunicacaoDireta extends StatefulWidget {
  const PaiComunicacaoDireta({Key? key}) : super(key: key);

  @override
  State<PaiComunicacaoDireta> createState() => _PaiComunicacaoDiretaState();
}

class _PaiComunicacaoDiretaState extends State<PaiComunicacaoDireta> {
  int number = 0;

  void delta(int delta){
    setState(() {
      number += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => delta(1),
              child: const Text('Incrementar'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => delta(-1),
              child: const Text('Decrementar'),
            ),
          ],
        ),
        FilhoComunicacaoDireta(number: number),
      ],
    );
  }
}
