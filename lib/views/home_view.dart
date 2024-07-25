// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _width = 50;

  double _height = 50;

  Color _color = Colors.purple;

  double _radius = 8;

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: AnimatedOpacity(
            duration: const Duration(seconds: 4),
            opacity: _visible ? 1 : 0,
            child: AnimatedContainer(
              curve: Curves.easeInOut,
              duration: const Duration(seconds: 4),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(_radius),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              _visible = !_visible;
              _width = _width == 59 ? 100 : 50;

              _height = _height == 50 ? 6 : 50;

              _color = _color == Colors.purple ? Colors.green : Colors.purple;

              _radius = _radius == 8 ? 10 : 8;
            });
          },
        ),
      ),
    );
  }
}
