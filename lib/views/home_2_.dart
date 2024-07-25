// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  double _padding = 0;

  double _x = 0;
  double _y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Color.fromARGB(255, 245, 213, 116),
            child: AnimatedAlign(
              duration: const Duration(seconds: 2),
              alignment: FractionalOffset(_x, _y),
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            _x = _x == 0 ? 1 : 0;
            _y = _y == 0 ? 1 : 0;
          });
        },
      ),
    );
  }
}
