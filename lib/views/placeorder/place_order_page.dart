import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../homepage/widgets/banner.dart';
import 'change_address.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Place Order"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address", style: TextStyle(
                    fontSize: 18,
                      decoration: TextDecoration.underline),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("User Name",
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DeliveryAddressPage();
                              }),
                            );
                          },
                          child: Text("Change"))
                    ],
                  ),
                  Text("Test Address",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text("City",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text("Pin code: 12345",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Text("Ph: 123456890",
                      style: TextStyle(fontSize: 15, color: Colors.black))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Image.asset(
                "assets/ad1.png",
                // height: 200,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                  right: 10,
                  child: IconButton(onPressed: () {},
                      icon: Icon(Icons.close, color: Colors.white, size: 30,)))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Iconsax.discount_shape,
                size: 30,
                color: Colors.black,
              ),
              title: Text("Apply Coupon"),
              trailing: TextButton(
                onPressed: () {},
                child: Text("Select"),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Bill Summary",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Price Details",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  // Divider(
                  //   thickness: 2,
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price (3 items)",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Text("₹ 8000",
                          style: TextStyle(
                            fontSize: 15,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discounts",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Text("- ₹890",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Coupon savings",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Text("- ₹90",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Charges",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Row(
                        children: [
                          Text("Free delivery",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text("₹ 300",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Grand Total",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Text("₹ 7110",
                          style: TextStyle(
                            fontSize: 15,
                          ))
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("Payable Amount",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      Text("₹ 7110",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Text("You will save ₹890 on this order",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Return/Refund policy",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "In case of return, we ensure quick refunds. "
                    "full amount will be refunded excluding Delivery charges",
                    style: TextStyle(color: Colors.black),
                    maxLines: 2,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Read policy",
                        textAlign: TextAlign.start,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Confirm Order"),
          ),
        ),
      ),
    );
  }
}
