import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class RelatedProductTile extends StatelessWidget {
  final String itemName;
  final String companyName;
  final String totalPrice;
  final String imagePath;
  final String actualPrice;
  final String description;
  final void Function()? onPressed;
  final void Function()? onTap;
  final void Function()? addCart;

  const RelatedProductTile(
      {super.key,
      required this.itemName,
      required this.companyName,
      required this.totalPrice,
      required this.imagePath,
      required this.actualPrice,
      this.onPressed,
      this.onTap,
      required this.description,
      this.addCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 2,
            ),
          ],
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
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                          Text(
                            companyName,
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            itemName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 8,
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
