import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PastOrderCard extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String description;
  final String orderId;
  final String price;
  final String deliveryStatus;
  final String buttonText;
  final String date;
  final Color? color;
  final void Function()? onPressed;

  const PastOrderCard(
      {super.key,
      required this.imagePath,
      required this.itemName,
      required this.description,
      required this.orderId,
      required this.price,
      required this.deliveryStatus,
      required this.buttonText,
      this.color,
      this.onPressed,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: 120,
                      height: 80,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OrderId: $orderId",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          itemName,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 3.5,
                          // Replace with the actual rating
                          minRating: 1,
                          unratedColor: Colors.grey.shade400,
                          updateOnDrag: true,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 23,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.green,
                            size: 20,
                          ),
                          onRatingUpdate: (rating) {
                            // Handle rating updates if needed
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$deliveryStatus on $date",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: color,
                          shadowColor: Colors.teal[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(buttonText)),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 2,
        )
      ],
    );
  }
}
