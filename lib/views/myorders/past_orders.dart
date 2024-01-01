import 'package:danthal/views/myorders/widgets/ordercard_delivered.dart';
import 'package:flutter/material.dart';

class PsstOrders extends StatefulWidget {
  const PsstOrders({super.key});

  @override
  State<PsstOrders> createState() => _PsstOrdersState();
}

class _PsstOrdersState extends State<PsstOrders> {
  List<String> images = [
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg",
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg",
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) => getOrders(index),
    ));
  }

  Widget getOrders(int index) {
    return PastOrderCard(
        imagePath: images[index],
        onPressed: () {},
        date: "30 Dec 2022",
        itemName: "Item Name",
        description: "Description",
        orderId: "12345",
        price: "200",
        deliveryStatus: "Delivered",
        color: Colors.green,
        buttonText: "Re Order");
  }
}
