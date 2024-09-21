
import 'package:flutter/material.dart';
import '../constant.dart';
class IconContent extends StatelessWidget {
  IconContent({this.icon, this.lebel});
  IconData? icon;
  String? lebel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lebel!,
          style:kLebelTextStyle,
        )
      ],
    );
  }
}