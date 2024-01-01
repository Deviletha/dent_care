import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class RelatedProductTile extends StatelessWidget {
  final String itemName;
  final String companyName;
  final String totalPrice;
  final String imagePath;
  final String actualPrice;
  final String discount;
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
        required this.discount,
        this.addCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
      child: Container(
        decoration:
        BoxDecoration(

        ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
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
                                fontSize: 13, ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                actualPrice,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color(ColorT.textColor),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                totalPrice,
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                discount,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                                highlightColor: Colors.red,
                                onTap:(){},
                                child: Icon(CupertinoIcons.cart_badge_plus, size: 20,)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
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
