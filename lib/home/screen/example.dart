import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = 100.0;
    var _heigt = 100.0;

    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(
            milliseconds: 250,
          ),
          color: Colors.yellow,
          width: _width,
          height: _heigt,
        ),
      ],
    );
  }
}
