import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class FeaturedTile extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final String price;
  final void Function()? onPressed;

  const FeaturedTile(
      {super.key,
      required this.itemName,
      required this.imagePath,
      required this.price,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 1,
                  ),
                ],
                color: Colors.white,
              ),
              height: 220,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        itemName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(ColorT.textColor),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(ColorT.textColor),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextButton(
                              onPressed: onPressed,
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    color: Color(ColorT.themeColor),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       itemName,
            //       style: TextStyle(
            //         fontSize: 14,
            //         fontWeight: FontWeight.bold,
            //         color: Color(ColorT.textColor),
            //       ),
            //     ),
            //     TextButton(
            //         onPressed: onPressed,
            //         child: Text(
            //           "Details",
            //           style: TextStyle(
            //               fontSize: 10, color: Color(ColorT.textColor)),
            //         ))
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
