import 'package:danthal/views/cartpage/widgets/cartcard.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../theme/colors.dart';
import '../registration/login_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
        appBar: AppBar(
          title: Text("My Cart"),
        ),
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
                      subtitle: Text("Location",
                          style: TextStyle(color: Colors.white)),
                      leading: CircleAvatar(
                        child: Image.asset("assets/profile_avatar.png"),
                      )),
                ),
              ),
              ListTile(
                leading: Icon(
                  Iconsax.home,
                  color: Colors.black,
                ),
                title: Text("Shop By Medicine"),
              ),
              ListTile(
                leading: Icon(
                  Iconsax.shopping_bag,
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
                  Iconsax.profile_circle,
                  color: Colors.black,
                ),
                title: Text("My Profile"),
              ),
              ListTile(
                leading: Icon(
                  Iconsax.discount_circle,
                  color: Colors.black,
                ),
                title: Text("Offers and Discounts"),
              ),
              ListTile(
                leading: Icon(
                  Iconsax.info_circle,
                  color: Colors.black,
                ),
                title: Text("FAQ's and Help"),
              ),
              ListTile(
                leading: Icon(
                  Iconsax.information,
                  color: Colors.black,
                ),
                title: Text("Privacy and Terms"),
              ),
              ListTile(
                leading: Icon(
                  Iconsax.info_circle5,
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
                  Iconsax.logout,
                  color: Colors.black,
                ),
                title: Text("Log Out"),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) => getCart(index),
        ));
  }

  Widget getCart(int index) {
    return CartTile(
      imagePath: images[index],
      itemName: "Item Name",
      description: "Description",
      price: "Rs. 200",
       quantity: "1",
      onPressed: () {},
      onPressedAdd: (){},
      onPressedLess: (){},

    );
  }
}
