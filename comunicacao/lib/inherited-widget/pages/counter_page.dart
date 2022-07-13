import 'package:comunicacao/inherited-widget/providers/counter.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  CounterProvider.of(context)!.state.inc();
                });
              },
              child: const Text('Incrementar'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  CounterProvider.of(context)!.state.dec();
                });
              },
              child: const Text('Decrementar'),
            ),
          ],
        ),
        Text(
          CounterProvider.of(context)!.state.value,
          style: const TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
