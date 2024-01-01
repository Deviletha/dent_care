import 'package:danthal/views/category/widgets/allcategory_card.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../theme/colors.dart';
import '../faq_page.dart';
import '../myorders/orders.dart';
import '../privacy&terms.dart';
import '../registration/login_page.dart';
import 'category_view.dart';

class CategoryPage extends StatefulWidget {

  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<String> images = [
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/colgate.png",
    "assets/mouthwash.jpg",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg",
    "assets/instrument.jpg",
    "assets/dental-tools-1.jpg",
    "assets/dentist-equipment.jpg",
    "assets/topsell.jpg",
    "assets/products.jpeg",
    "assets/dent product.jpg"
  ];

  List<String> categoryNames = [
    "Ayurveda",
    "Anesthetics",
    "Endodontics",
    "Digital Equipment",
    "Hygiene",
    "Orthodontics",
    "Small Equipment",
    "Surgical and Perio",
    "Xray",
    "Restorative",
    "Infection Control",
    "Preventive",
    "Digital Equipment",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
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
      endDrawerEnableOpenDragGesture: true,
      body: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.6,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) => getCategory(index),
      ),
    );
  }

  Widget getCategory(int index) {
    return AllCategoryTile(
      imagePath: images[index],
      categoryName: categoryNames[index],
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CategoryView(
          category: categoryNames[index],
        )));
      },
    );
  }
}
