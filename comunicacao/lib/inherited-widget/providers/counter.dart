import 'package:flutter/cupertino.dart';

class CounterState {
  int _value = 0;
  void inc() => _value++;
  void dec() => _value--;
  String get value => _value.toString();
}

// A mudança de estado gerada pelo CounterProvider é armazenada na CounterState

class CounterProvider extends InheritedWidget {
  final CounterState state = CounterState();

  CounterProvider({Key? key, required Widget child}) : super(key: key, child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
