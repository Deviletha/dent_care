import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../theme/colors.dart';
import 'cartpage/cart_page.dart';
import 'category/category_page.dart';
import 'homepage/homepage.dart';
import 'myorders/orders.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectIndex = 0;

  List body = <Widget>[
    Homepage(),
    CategoryPage(),
    MyOrders(),
    ProfilePage(),
    CartPage()
  ];

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  List<TabItem> tabItems = List.of([
    TabItem(
      Iconsax.home,
      "Home",
      Colors.indigo.shade50,
      circleStrokeColor: Colors.white,
      labelStyle: TextStyle(color: Color(ColorT.textColor,),
      fontWeight: FontWeight.bold, letterSpacing: 1)
    ),
    TabItem(
      Iconsax.category,
      "Category",
        Colors.indigo.shade50,
        circleStrokeColor: Colors.white,
        labelStyle: TextStyle(color: Color(ColorT.textColor,),
            fontWeight: FontWeight.bold, letterSpacing: 1)
    ),
    TabItem(
      Iconsax.note_2,
      "My Orders",
        Colors.indigo.shade50,
        circleStrokeColor: Colors.white,
        labelStyle: TextStyle(color: Color(ColorT.textColor,),
            fontWeight: FontWeight.bold, letterSpacing: 1)
    ),
    TabItem(
      Iconsax.profile_tick,
      "Profile",
        Colors.indigo.shade50,
        circleStrokeColor: Colors.white,
        labelStyle: TextStyle(color: Color(ColorT.textColor,),
            fontWeight: FontWeight.bold, letterSpacing: 1)
    ),
    TabItem(
      Iconsax.bag_24,
      "My Cart",
        Colors.indigo.shade50,
        circleStrokeColor: Colors.white,
        labelStyle: TextStyle(color: Color(ColorT.textColor,),
            fontWeight: FontWeight.bold, letterSpacing: 1)
    ),
  ]);

  // final iconList = <IconData>[
  //   Iconsax.home_15,
  //   Iconsax.category,
  //   Iconsax.note_2,
  //   Iconsax.profile_tick5,
  //   Iconsax.bag_24,
  // ];
  //
  // List bottomLabels = ["Home","Category","My Orders","Profile","My Cart"];

  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectIndex);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CircularBottomNavigation(
          tabItems,
          controller: _navigationController,
          selectedPos: selectIndex,
          animationDuration: Duration(milliseconds: 300),
          barBackgroundColor: Colors.indigo.shade50,
          barHeight: 65,
          circleStrokeWidth: 3,
          normalIconColor: Color(ColorT.textColor),
          // iconsSize: 35,
          selectedIconColor: Color(ColorT.textColor),
          circleSize: 65,
          // backgroundBoxShadow: <BoxShadow>[
          //   BoxShadow(color: Colors.indigo.shade100, blurRadius: 3.0),
          // ],
          selectedCallback: (int? selectedPos) {
            setState(() {
              selectIndex = selectedPos ?? 0;
              print(_navigationController.value);
            });
          },
        ),
        body: body.elementAt(selectIndex),
      ),
    );
  }
}
