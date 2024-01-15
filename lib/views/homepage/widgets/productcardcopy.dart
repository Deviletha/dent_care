import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../theme/colors.dart';

class ProductTileCopy extends StatelessWidget {
  final String itemName;
  final String description;
  final String totalPrice;
  final String imagePath;
  final String actualPrice;
  final String discount;
  final void Function()? wishlist;
  final void Function()? onTap;
  final void Function()? addCart;

  const ProductTileCopy(
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
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 5),
      child: Container(
        decoration:
            BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 3,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.cover),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          itemName,
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          actualPrice,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(ColorT.themeColor),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          totalPrice,
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          discount,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Color(ColorT.redColor),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Top Selling",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                              highlightColor: Colors.red,
                              onTap:(){},
                              child: Icon(FluentIcons.cart_16_regular,color: Color(ColorT.themeColor)),
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
