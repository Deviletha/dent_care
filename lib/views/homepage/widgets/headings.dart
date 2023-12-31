import 'package:flutter/material.dart';

import '../../../Components/title_widget.dart';
import '../../../theme/colors.dart';

class TitleText extends StatelessWidget {
  final String heading;
  final String buttonText;
  final void Function() onPressed;

  const TitleText(
      {super.key,
      required this.heading,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Heading(
          text: heading,
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(ColorT.redColor), fontSize: 15, decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}
