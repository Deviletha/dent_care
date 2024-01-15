import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../theme/colors.dart';

class ProductTile extends StatelessWidget {
  final String itemName;
  final String description;
  final String totalPrice;
  final String imagePath;
  final String actualPrice;
  final String discount;
  final void Function()? wishlist;
  final void Function()? onTap;
  final void Function()? addCart;

  const ProductTile(
      {super.key,
      required this.itemName,
      required this.description,
      required this.totalPrice,
      required this.imagePath,
      required this.actualPrice,
      this.wishlist,
      this.onTap,
      required this.discount,
      this.addCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 5),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15), topLeft: Radius.circular(15)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: wishlist,
                          icon: Icon(
                            Ionicons.heart_outline,
                            color: Color(ColorT.themeColor),
                            size: 20,
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)
                    )
                ),

                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        itemName,
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 11, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                actualPrice,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Color(ColorT.themeColor),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "MRP: $totalPrice",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                highlightColor: Colors.red,
                                onTap:(){},
                                child: Icon(FluentIcons.cart_16_regular,color: Color(ColorT.themeColor),)),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
