import 'package:flutter/material.dart';
import 'package:hangman/home/screen/example.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.star),
        ),
      ),
      body: Example(),
    );
  }
}
