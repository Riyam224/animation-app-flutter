import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  double _padding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedPadding(
          duration: const Duration(seconds: 2),
          padding: EdgeInsets.all(_padding),
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            _padding = _padding == 0 ? 20 : 0;
          });
        },
      ),
    );
  }
}
