import 'package:flutter/material.dart';

class FilhoComunicacaoIndireta extends StatelessWidget {
  final void Function(int) onChange;

  const FilhoComunicacaoIndireta({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => onChange(1),
          child: const Text('Incrementar'),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () => onChange(-1),
          child: const Text('Decrementar'),
        ),
      ],
    );
  }
}
