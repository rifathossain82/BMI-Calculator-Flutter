import 'package:bmi_calculator/data.dart';
import 'package:flutter/material.dart';

class Left_bar extends StatelessWidget {
  double width_;
  Left_bar(this.width_);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: width_,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: accentHexColor),
        ),
      ],
    );
  }
}
