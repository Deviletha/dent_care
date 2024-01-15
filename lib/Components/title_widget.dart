import 'package:flutter/material.dart';
import '../theme/colors.dart';


class Heading extends StatelessWidget {
  const Heading({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 17,
                letterSpacing: .80,
                fontWeight: FontWeight.bold,
              color: Color(ColorT.themeColor)),
          ),
        ],
      ),
    );
  }
}
