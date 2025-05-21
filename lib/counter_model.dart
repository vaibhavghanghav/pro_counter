import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier{
  int _counter = 0;

  int get counter1 => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}