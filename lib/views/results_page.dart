import 'package:bmi_calculator/components/BottomButton.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constant.dart';
import "package:bmi_calculator/components/reusable_card.dart";

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: k_ResultTextStyle,
                  ),
                  Text("18.3", style: kBMITextStyle),
                  Text(
                    "Your BMI Result is Normal",
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "Re-Calculate",
          )
        ],
      ),
    );
  }
}
