import 'package:bmi_calculator/data.dart';
import 'package:flutter/material.dart';

class Right_bar extends StatelessWidget {
  double width_;
  Right_bar(this.width_);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: width_,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: accentHexColor),
        ),
      ],
    );
  }
}
