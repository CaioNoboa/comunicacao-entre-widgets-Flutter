import 'package:flutter/material.dart';

class FilhoComunicacaoDireta extends StatelessWidget {
  final int number;

  const FilhoComunicacaoDireta({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString(),
      style: const TextStyle(fontSize: 25),
    );
  }
}
