import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../theme/colors.dart';

class FeaturedProductCard extends StatelessWidget {
  final String itemName;
  final String description;
  final String price;
  final String mrp;
  final String discount;
  final String imagePath;
  final void Function()? onTap;
  final void Function()? onPressed;

  const FeaturedProductCard(
      {super.key,
        required this.itemName,
        required this.description,
        required this.price,
        required this.mrp,
        required this.discount,
        this.onTap,
        this.onPressed, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.zero,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 1,
            ),
          ],
          // border: Border.all(color: Colors.grey.shade800, width: 1),
        ),
        child: InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(itemName),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              description,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "₹ $mrp",
                                  style: TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough,
                                    color: Color(ColorT.themeColor),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "₹ $price",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(ColorT.redColor),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              discount,
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(ColorT.themeColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 130,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: onPressed,
                            icon: Icon(
                              Ionicons.heart_outline,
                              color: Colors.black,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Image border// Image radius
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
