import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable(
      {required this.colour, required this.cardChild, required this.onPress});
  final Color colour;
  final Widget cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
