import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String description;
  final String orderId;
  final String price;
  final String deliveryStatus;
  final String buttonText;
  final String date;
  final  Color? color;
  final void Function()? onPressed;

  const OrderCard(
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 120,
                  height: 100,
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
                          fontSize: 12, color: Colors.red),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      itemName,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          deliveryStatus,
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
