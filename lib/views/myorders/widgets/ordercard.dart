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
  final color;
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 3,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: ListTile(
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(
                  imagePath,
                )),
                Text(
                  date,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      itemName,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                IconButton(onPressed: onPressed, icon: Icon(Icons.menu))
              ],
            ),
            subtitle: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("OrderId: $orderId"), Text("Rs.$price")],
                ),
                SizedBox(
                  height: 5,
                ),
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
          )),
    );
  }
}
