import 'package:flutter/material.dart';

import 'package:bmi_calcie/constants.dart';
import 'package:bmi_calcie/components/reusable.dart';
import 'package:bmi_calcie/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiresult,
      required this.resultText,
      required this.interpretation});

  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calulator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  'Your BMI',
                  style: kTittleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable(
              colour: inactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiresult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            buttonTittle: 'Re-Calculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
