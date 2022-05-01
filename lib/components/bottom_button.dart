import 'package:flutter/material.dart';
import 'package:bmi_calcie/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTittle});
  final onTap;
  final String buttonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTittle,
          style: klargeButtonTextStyle,
        )),
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: kbottomContainerColour,
          borderRadius: BorderRadius.circular(100.0),
        ),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: kbottomContainerheight,
      ),
    );
  }
}
