import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class ProductTile extends StatelessWidget {
  final String itemName;
  final String description;
  final String totalPrice;
  final String imagePath;
  final String actualPrice;
  final String discount;
  final void Function()? onPressed;
  final void Function()? onTap;
  final void Function()? addCart;

  const ProductTile(
      {super.key,
      required this.itemName,
      required this.description,
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
      padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 5),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade50, width: 1),
        ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    discount,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      itemName,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      actualPrice,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(ColorT.textColor),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      totalPrice,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
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
