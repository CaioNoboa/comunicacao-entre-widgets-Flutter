import 'package:comunicacao/comunicacao-direta/pai_com_direta.dart';
import 'package:comunicacao/comunicacao-indireta/pai_com_indireta.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Contador')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Comunicação direta:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: PaiComunicacaoDireta(),
            ),
            SizedBox(height: 20),
            Text(
              'Comunicação indireta:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: PaiComunicacaoIndireta(),
            ),
          ],
        ),
      ),
    );
  }
}
