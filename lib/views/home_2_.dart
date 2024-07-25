import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Center(
              child: Text(
                'my test',
                style: TextStyle(fontSize: 50),
              ),
            ),
            AnimatedPositioned(
                duration: const Duration(seconds: 4),
                bottom: visible == true ? 320 : 00,
                left: 100,
                right: 100,
                child: Container(
                  width: 199,
                  height: 100,
                  color: Color.fromARGB(255, 54, 200, 244),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              visible = !visible;
            });
          },
        ),
      ),
    );
  }
}
