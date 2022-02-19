import 'dart:math';

import 'package:flutter/foundation.dart';

class ExampleProvider extends ChangeNotifier {
  double? _heigt;
  double? _width;

  _init() {
    _heigt = Random().nextInt(350).toDouble();
    _width = Random().nextInt(350).toDouble();
  }

  ExampleProvider() {
    _init();
  }

  double? get heigt => _heigt;
  double? get width => _width;

  set heigt(double? newHeigt) {
    _heigt = newHeigt;
    notifyListeners();
  }

  set width(double? newWidth) {
    _width = newWidth;
    notifyListeners();
  }
}
