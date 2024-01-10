import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  int _page = 0;
  int get page => _page;
  set page(int newInt) {
    _page = newInt;
    notifyListeners();
  }
}
