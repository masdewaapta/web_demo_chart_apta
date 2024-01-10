import 'package:flutter/material.dart';

import 'theme.dart';

extension ContextExt on BuildContext {
  double get height {
    return MediaQuery.of(this).size.height;
  }

  double get width {
    return MediaQuery.of(this).size.width;
  }

  TextScaler textScale(double fontSize) {
    return MediaQuery.of(this).textScaler.scale(fontSize) > 0.9
        ? const TextScaler.linear(0.9)
        : TextScaler.noScaling;
  }

  bool get responsive {
    return MediaQuery.of(this).size.width > 800;
  }

  Future<dynamic> pop([bool? result]) async {
    return Navigator.of(this).pop(result);
  }

  Future<dynamic> push(String route) async {
    return Navigator.of(this).pushNamed(route);
  }

  Future<dynamic> pushAndRemoveUntil(String route) async {
    return Navigator.of(this).pushNamedAndRemoveUntil(route, (route) => false);
  }
}
