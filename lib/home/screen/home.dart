import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman/home/provider/example_provider.dart';
import 'package:hangman/home/screen/example.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Provider.of<ExampleProvider>(context, listen: false).heigt =
                Random().nextInt(350).toDouble();
            Provider.of<ExampleProvider>(context, listen: false).width =
                Random().nextInt(350).toDouble();
          },
          icon: const Icon(Icons.change_history),
        ),
      ),
      body: const Example(),
    );
  }
}
