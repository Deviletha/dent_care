import 'package:danthal/views/myorders/past_orders.dart';
import 'package:danthal/views/myorders/upcoming_orders.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../theme/colors.dart';
import '../registration/login_page.dart';
import '../profile_page/profile_page.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Orders"),
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            // indicator: BoxDecoration(shape: BoxShape.circle),
            indicatorColor: Colors.red,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Tab(
                  text: "UPCOMING",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Tab(
                  text: "PAST ORDERS",
                ),
              )
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            children: [
              Container(
                color: Color(
                  ColorT.themeColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
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
                  Iconsax.home,
                  color: Colors.black,
                ),
                title: Text("Shop By Medicine"),
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
        body: TabBarView(
          children: const [
            Upcoming(),
            PsstOrders()
          ],
        ),
      ),
    );
  }
}
