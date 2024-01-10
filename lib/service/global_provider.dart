import 'package:flutter/material.dart';

class GlobalProvider extends ChangeNotifier {
  double _height = 75;
  double get height => _height;
  set height(double newDouble) {
    _height = newDouble;
    notifyListeners();
  }

  int _flexContent = 6;
  int get flexContent => _flexContent;
  set flexContent(int newInt) {
    _flexContent = newInt;
    notifyListeners();
  }
}
