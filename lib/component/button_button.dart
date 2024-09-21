import 'package:flutter/material.dart';
import '../constant.dart';


class ButtonButton extends StatelessWidget {
  ButtonButton({@required this.onTap,@required this.buttonTitle});
  final Function()? onTap;
  final String? buttonTitle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kButtomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding:EdgeInsets.only(bottom: 20.0) ,
        width: double.infinity,
        height: kButtomContainerHeight,
      ),
    );
  }
}
