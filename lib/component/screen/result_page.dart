 import 'package:bmi_calculator/component/button_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatelessWidget {
  //const ResultPage({Key? key}) : super(key: key);
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});
final String? bmiResult;
final String? resultText;
final String? interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          ),
          Expanded(
              flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChhild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!.toUpperCase(),
                        style: kResultTextStyle,
                  ),
                  Text(
                   bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation!,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,

                  )
                ],
              ),
            ),
          ),
          ButtonButton(buttonTitle: 'RE-CALCULATE',
          onTap: (){
            Navigator.pop(context);
          },
          )
        ],
      ),
    );
  }
}
