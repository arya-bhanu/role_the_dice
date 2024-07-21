import 'package:flutter/material.dart';
import 'dart:math';
import 'package:logger/logger.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer(
      {super.key,
      this.color1 = const Color.fromARGB(255, 10, 209, 209),
      this.color2 = const Color.fromARGB(139, 151, 15, 230)});
  final Color color1;
  final Color color2;
  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var image = 0;

  _GradientContainerState() {
    image = randomDiceNumber();
  }

  final logger = Logger();

  int randomDiceNumber() {
    final random = Random();
    return random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [widget.color1, widget.color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/dice-$image.png",
              width: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    image = randomDiceNumber();
                  });
                },
                child: const Text("Role the dice"))
          ],
        ));
  }
}
