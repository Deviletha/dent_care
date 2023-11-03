import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
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

  List body = <Widget>[Homepage(), CategoryPage(),MyOrders(),ProfilePage(),CartPage()];

  void onItemTapped(int index) {
    setState(() {
      selectIndex = index;
    });
  }

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

  final iconList = <IconData>[
    Iconsax.home_15,
    Iconsax.category,
    Iconsax.note_2,
    Iconsax.profile_tick5,
    Iconsax.bag_24,
  ];

  List bottomLabels = ["Home","Category","My Orders","Profile","My Cart"];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          height: 70,
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color =
                isActive ? Color(ColorT.themeColor) : Colors.grey.shade500;
            final color1 =
                isActive ? Colors.grey.shade800 : Colors.grey.shade800;

            // final color = isActive ? colors.activeNavigationBarColor : colors.notActiveNavigationBarColor;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconList[index],
                  size: 30,
                  color: color,
                ),
                const SizedBox(height: 4),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      bottomLabels[index],
                      style: TextStyle(fontSize: 10, color: color1),
                    ))
              ],
            );
          },
          gapWidth: 0,
          activeIndex: selectIndex,
          splashSpeedInMilliseconds: 300,
          onTap: (index) => setState(() => selectIndex = index),
        ),
        body: body.elementAt(selectIndex),
      ),
    );
  }
}
