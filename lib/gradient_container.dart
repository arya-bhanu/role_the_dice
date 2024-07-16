import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      this.color1 = const Color.fromARGB(255, 10, 209, 209),
      this.color2 = const Color.fromARGB(139, 151, 15, 230)});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Center(
          child: Image.asset(
        'assets/img/dice-1.png',
        width: 250,
      )),
    );
  }
}
