import 'package:flutter/material.dart';
import 'package:hangman/home/provider/example_provider.dart';
import 'package:provider/provider.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = Provider.of<ExampleProvider>(context).width;
    var _heigt = Provider.of<ExampleProvider>(context).heigt;
    var _color = Provider.of<ExampleProvider>(context).color;

    print("reload");
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(
            milliseconds: 250,
          ),
          color: _color,
          width: _width,
          height: _heigt,
        ),
      ],
    );
  }
}
