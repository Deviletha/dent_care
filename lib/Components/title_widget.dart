import 'package:flutter/material.dart';


class Heading extends StatelessWidget {
  const Heading({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,),
          ),
        ],
      ),
    );
  }
}
