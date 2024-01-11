import 'package:flutter/material.dart';

import '../../../Components/title_widget.dart';
import '../../../theme/colors.dart';

class FeaturedTile extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final String price;
  final void Function()? onPressed;

  const FeaturedTile(
      {super.key,
      required this.itemName,
      required this.imagePath,
      required this.price,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
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
            height: 380,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.elliptical(190, 40),
                    bottomRight: Radius.elliptical(190, 40)),
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                  height: 280,
                  width: double.infinity,
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            fontWeight: FontWeight.bold
                            // Color(ColorT.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          itemName,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600
                            // Color(ColorT.textColor),
                          ),
                        ),
                        // ElevatedButton(
                        //   onPressed: onPressed,
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: Color(ColorT.themeColor),
                        //     shadowColor: Colors.teal[300],
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(2),
                        //     ),
                        //   ),
                        //   child: Text(
                        //     "Buy Now",
                        //     style: TextStyle(
                        //       letterSpacing: 2,
                        //       fontSize: 12,
                        //       color: Colors.white,),
                        //   ),
                        // ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
