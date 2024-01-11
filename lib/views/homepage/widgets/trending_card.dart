import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class TrendingTile extends StatelessWidget {
  final String itemName;
  final String mrp;
  final String imagePath;
  final String price;
  final String discount;
  final void Function()? onPressed;

  const TrendingTile(
      {super.key,
      required this.itemName,
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
          boxShadow:  [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        height: 300,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(ColorT.themeColor),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "demo description",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              mrp,
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              price,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        discount,
                        style: TextStyle(fontSize: 13, color: Colors.green),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: onPressed,
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                "Details",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(ColorT.textColor)),
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade100,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.fitHeight)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
