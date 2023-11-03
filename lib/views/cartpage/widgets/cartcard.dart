import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../theme/colors.dart';

class CartTile extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String description;
  final String price;
  final String quantity;
  final void Function()? onPressed;
  final void Function()? onPressedAdd;
  final void Function()? onPressedLess;

  const CartTile(
      {super.key,
      required this.imagePath,
      required this.itemName,
      required this.description,
      required this.price,
      this.onPressed,
      this.onPressedAdd,
      this.onPressedLess,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.cover),
                  ),
                  // Image border// Image radius
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(itemName),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(ColorT.themeColor),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            decoration:
                            BoxDecoration(border: Border.all(color: Colors.grey)),
                            child: Row(
                              children: [
                                Container(
                                  color: Colors.grey,
                                  child: IconButton(
                                      onPressed: onPressedLess,
                                      icon: Icon(
                                        Iconsax.minus,
                                        size: 15,
                                      )),
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Text(
                                    quantity,
                                    style:
                                    TextStyle(fontSize: 13, color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  color: Colors.grey,
                                  child: IconButton(
                                      onPressed: onPressedAdd,
                                      icon: Icon(
                                        Iconsax.add,
                                        size: 15,
                                      )),
                                )
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: onPressed,
                            icon: Icon(
                              Iconsax.trash,
                              size: 25,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              )
            ],
          )),
    );
  }
}
