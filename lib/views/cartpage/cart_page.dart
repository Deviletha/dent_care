import 'package:danthal/views/cartpage/widgets/cartcard.dart';
import 'package:danthal/views/myorders/orders.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../theme/colors.dart';
import '../faq_page.dart';
import '../privacy&terms.dart';
import '../registration/login_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> images = [
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

  final int _selectedQuantity = 1; // Initial value for the dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      extendBody: false,
      endDrawerEnableOpenDragGesture: true,
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Color(
                ColorT.themeColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(
                    title: Text("User Name",
                        style: TextStyle(color: Colors.white)),
                    subtitle:
                        Text("Location", style: TextStyle(color: Colors.white)),
                    leading: CircleAvatar(
                      child: Image.asset("assets/profile_avatar.png"),
                    )),
              ),
            ),
            ListTile(
              leading: Icon(
                Ionicons.home_outline,
                color: Colors.black,
              ),
              title: Text("Shop By Medicine"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyOrders()));
              },
              leading: Icon(
                Ionicons.bag_outline,
                color: Colors.black,
              ),
              title: Text("My Order"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              leading: Icon(
                Ionicons.person_outline,
                color: Colors.black,
              ),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(
                Ionicons.pricetag_outline,
                color: Colors.black,
              ),
              title: Text("Offers and Discounts"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FAQPage()));
              },
              leading: Icon(
                Ionicons.help_circle_outline,
                color: Colors.black,
              ),
              title: Text("FAQ's and Help"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyAndTermsPage()));
              },
              leading: Icon(
                Ionicons.alert_circle_outline,
                color: Colors.black,
              ),
              title: Text("Privacy and Terms"),
            ),
            ListTile(
              leading: Icon(
                Ionicons.information_circle_outline,
                color: Colors.black,
              ),
              title: Text("About Us"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              leading: Icon(
                Ionicons.log_out_outline,
                color: Colors.black,
              ),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) => getCart(index),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.grey.shade300 ),
                // borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      "Price Details",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Quantity",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text("3",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text("₹ 8000",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))
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
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text("₹ 890",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))
                      ],
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text("Total Savings",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    //     Text("₹ 300",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    //   ],
                    // ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Grand Total",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text("₹ 7110",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "7110",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(ColorT.textColor),
                  fontWeight: FontWeight.bold
                    ),
              ),
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 15, right: 15),
                  child: Text("Place Order"),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getCart(int index) {
    return CartTile(
      imagePath: images[index],
      itemName: "ITEM NAME",
      description: "Demo Description for cart page items ",
      price: "₹ 2000",
      quantity: _selectedQuantity.toString(),
      onPressed: () {},
    );
  }
}
