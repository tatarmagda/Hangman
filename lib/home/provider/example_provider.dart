import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExampleProvider extends ChangeNotifier {
  double? _heigt;
  double? _width;
  Color? _color;

  _init() {
    _heigt = Random().nextInt(350).toDouble();
    _width = Random().nextInt(350).toDouble();
    _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    print(Colors.primaries.length);
  }

  ExampleProvider() {
    _init();
  }

  double? get heigt => _heigt;
  double? get width => _width;
  Color? get color => _color;

  set heigt(double? newHeigt) {
    _heigt = newHeigt;
    notifyListeners();
  }

  set width(double? newWidth) {
    _width = newWidth;
    notifyListeners();
  }

  set color(Color? newColor) {
    _color = newColor;
    notifyListeners();
  }
}
