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
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                height:200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                flex: 2,
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
                        Text(itemName, style: TextStyle(color: Colors.grey.shade600),),
                        SizedBox(
                          height: 5,
                        ),
                        // Text(
                        //   description,
                        //   maxLines: 2,
                        //   style: TextStyle(
                        //       fontSize: 12,),
                        // ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                      ],
                    ),
                    Text(
                      discount,
                      style: TextStyle(fontSize: 13, color: Colors.green),
                    ),
                    SizedBox(height: 8,),
                Text(
                      totalPrice,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      actualPrice,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(ColorT.textColor),
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
