import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class TrendingTile extends StatelessWidget {
  final String itemName;
  final String description;
  final String mrp;
  final String imagePath;
  final String price;
  final String discount;
  final void Function()? onPressed;

  const TrendingTile(
      {super.key,
      required this.itemName,
      required this.description,
      required this.mrp,
      required this.imagePath,
      required this.price,
      required this.discount,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 3,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 200,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(imagePath), fit: BoxFit.cover)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      Text(
                        discount,
                        style: TextStyle(fontSize: 13, color: Colors.green),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        price,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        mrp,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        itemName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(ColorT.themeColor),
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(ColorT.themeColor),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: onPressed,
                      child: Text(
                        "Details",
                        style: TextStyle(fontSize: 10),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
