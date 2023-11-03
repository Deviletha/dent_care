import 'package:danthal/views/profile_page/address_page.dart';
import 'package:danthal/views/profile_page/edit_profile.dart';
import 'package:danthal/views/profile_page/rewards_page.dart';
import 'package:danthal/views/profile_page/setting.dart';
import 'package:danthal/views/profile_page/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../Components/custom_row.dart';
import '../../theme/colors.dart';
import '../registration/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      endDrawer: Drawer(
        child: ListView(
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
      endDrawerEnableOpenDragGesture: true,
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade300),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  child: Image.asset("assets/profile_avatar.png"),
                ),
                title: Text(
                  "User Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text("e mail id"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                children: [
                  CustomRow(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()));
                    },

                    icon: Icon(Iconsax.edit),
                    text: "My Profile",
                  ),
                  CustomRow(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddressPage()));
                    },

                    icon: Icon(Iconsax.location),
                    text: "Manage Address",
                  ),
                  CustomRow(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WishlistPage()));
                    },

                    icon: Icon(Iconsax.save_2),
                    text: "My Wishlist",
                  ),
                  CustomRow(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RewardPage()));
                    },

                    icon: Icon(Iconsax.money),
                    text: "My Rewards",
                  ),
                  CustomRow(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPage()));
                    },

                    icon: Icon(Iconsax.setting),
                    text: "Settings",
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  CustomRow(
                    onTap: () {},

                    icon: Icon(Iconsax.message),
                    text: "Help",
                  ),
                  CustomRow(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },

                    icon: Icon(Iconsax.logout),
                    text: "Logout",
                  ),
                  //   Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: ElevatedButton(onPressed: () {},
                  //         style: ElevatedButton.styleFrom(
                  //             backgroundColor: Color(ColorT.themeColor),
                  //         shadowColor: Colors.teal[300],
                  //       ),
                  //       child:
                  //       Row(
                  //         children: [
                  //           Icon(Iconsax.logout),
                  //           SizedBox(width: 10,),
                  //           Text("Logout")
                  //         ],
                  //       )),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
