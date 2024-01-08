import 'package:danthal/views/profile_page/address_page.dart';
import 'package:danthal/views/profile_page/edit_profile.dart';
import 'package:danthal/views/profile_page/privacy_info.dart';
import 'package:danthal/views/profile_page/rewards_page.dart';
import 'package:danthal/views/profile_page/setting.dart';
import 'package:danthal/views/profile_page/terms&conditions.dart';
import 'package:danthal/views/profile_page/widgets/accounts_custom_card.dart';
import 'package:danthal/views/profile_page/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../Components/custom_row.dart';
import '../../theme/colors.dart';
import '../faq_page.dart';
import '../myorders/orders.dart';
import '../privacy&terms.dart';
import '../registration/login_page.dart';
import 'about_us.dart';
import 'help&support.dart';

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
      endDrawerEnableOpenDragGesture: true,
      body: ListView(
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
              subtitle: Text("Email id"),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25, top: 10),
          //   child: Text(
          //     "Accounts",
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //   ),
          // ),
          // Divider(
          //   thickness: 2,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AccountCustomTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()));
                      },
                      icon: Ionicons.create_outline,
                      title: "My Profile",
                    ),
                    AccountCustomTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyOrders()));
                      },
                      icon: Ionicons.newspaper_outline,
                      title: "My Orders",
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 23,
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 23,
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AccountCustomTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WishlistPage()));
                      },
                      icon: Ionicons.bookmark_outline,
                      title: "My Wishlist",
                    ),
                    AccountCustomTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RewardPage()));
                      },
                      icon: Ionicons.diamond_outline,
                      title: "My Rewards",
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Divider(
              thickness: 2,
            ),
          ),
          CustomRow(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddressPage()));
            },
            icon: Icon(
              Ionicons.location_outline,
              color: Colors.grey,
            ),
            text: "Manage Address",
          ),
          Divider(
            thickness: 2,
          ),
          CustomRow(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
            },
            icon: Icon(
              Ionicons.settings_outline,
              color: Colors.grey,
            ),
            text: "Settings",
          ),
          Divider(
            thickness: 2,
          ),
          CustomRow(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrivacyInfoPage()));
            },
            icon: Icon(
              Ionicons.alert_circle_outline,
              color: Colors.grey,
            ),
            text: "Privacy Info",
          ),
          Divider(
            thickness: 2,
          ),
          CustomRow(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TermsAndConditions()));
            },
            icon: Icon(
              Ionicons.shield_checkmark_outline,
              color: Colors.grey,
            ),
            text: "Terms & Conditions",
          ),
          Divider(
            thickness: 2,
          ),
          CustomRow(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HelpAndSupport()));
            },
            icon: Icon(
              Ionicons.chatbox_ellipses_outline,
              color: Colors.grey,
            ),
            text: "Help & Support",
          ),
          Divider(
            thickness: 2,
          ),
          CustomRow(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
            icon: Icon(
              Ionicons.compass_outline,
              color: Colors.grey,
            ),
            text: "Who We Are",
          ),
          Divider(
            thickness: 2,
          ),
          CustomRow(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            icon: Icon(
              Ionicons.log_out_outline,
              color: Colors.grey,
            ),
            text: "Logout",
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
