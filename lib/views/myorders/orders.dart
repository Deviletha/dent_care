import 'package:danthal/views/myorders/past_orders.dart';
import 'package:danthal/views/myorders/upcoming_orders.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../theme/colors.dart';
import '../faq_page.dart';
import '../privacy&terms.dart';
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
      initialIndex: 0,
      animationDuration: Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Orders"),
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            // indicator: BoxDecoration(shape: BoxShape.circle),
            indicatorColor: Colors.red,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Tab(
                  text: "UPCOMING",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
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
                      subtitle: Text("Location",
                          style: TextStyle(color: Colors.white)),
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
        body: TabBarView(
          children: const [Upcoming(), PsstOrders()],
        ),
      ),
    );
  }
}
