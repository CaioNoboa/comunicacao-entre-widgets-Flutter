import 'package:comunicacao/comunicacao-direta/pai_com_direta.dart';
import 'package:comunicacao/comunicacao-indireta/pai_com_indireta.dart';
import 'package:comunicacao/inherited-widget/pages/counter_page.dart';
import 'package:comunicacao/inherited-widget/providers/counter.dart';
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Comunicação direta:', style: TextStyle(fontSize: 20)),
              const Padding(
                padding: EdgeInsets.all(15),
                child: PaiComunicacaoDireta(),
              ),
              const SizedBox(height: 20),
              const Text('Comunicação indireta:', style: TextStyle(fontSize: 20)),
              const Padding(
                padding: EdgeInsets.all(15),
                child: PaiComunicacaoIndireta(),
              ),
              const SizedBox(height: 20),
              const Text('Inherited Widget:', style: TextStyle(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.all(15),
                child: CounterProvider(child: const CounterPage()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
