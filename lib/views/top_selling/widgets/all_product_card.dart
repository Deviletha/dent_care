import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../theme/colors.dart';

class AllProductCard extends StatelessWidget {
  final String itemName;
  final String description;
  final String price;
  final String mrp;
  final String discount;
  final String imagePath;
  final void Function()? onTap;
  final void Function()? onPressed;

  const AllProductCard(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    image: DecorationImage(
                        image: AssetImage(
                          imagePath,
                        ),
                        fit: BoxFit.cover),
                  ),
                  // Image border// Image radius
                ),
              ),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
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
                              maxLines: 2,
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                             price,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(ColorT.redColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          Text(
                            mrp,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(ColorT.themeColor),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            discount,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(ColorT.themeColor),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: onPressed,
                        icon: Icon(
                          Ionicons.heart_outline,
                          color: Colors.black,
                        ),
                      )
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
