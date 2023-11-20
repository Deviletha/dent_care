import 'package:danthal/views/myorders/widgets/ordercard.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  List<String> images = [
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/images.png",
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/images.png",
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/images.png"
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
    return OrderCard(
        imagePath: images[index],
        onPressed: () {},
        date: "30 Dec 2022",
        itemName: "Item Name",
        description: "Demo description for cart page items ",
        orderId: "12345",
        price: "200",
        deliveryStatus: "Package on the way",
        color: Color(ColorT.themeColor),
        buttonText: "Track");
  }
}
