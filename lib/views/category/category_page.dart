import 'package:danthal/views/category/widgets/allcategory_card.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../theme/colors.dart';
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
    "assets/Tokuyama.jpeg",
    "assets/colgate.png",
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/images.png",
    "assets/7-Common-Plastic-Dental-Equipment-1200x900.jpg",
    "assets/dental-tools-1.jpg",
    "assets/dentist-equipment.jpg",
    "assets/treatment-units.jpg",
    "assets/mouthwash.jpg",
    "assets/images.png",
  ];

  List<String> categoryNames = [
    "Ayurveda",
    "Anesthetics",
    "Endodontics",
    "CAD/CAM and 3D Printers",
    "Digital Equipment",
    "Hygiene",
    "Lab Products",
    "Orthodontics",
    "Small Equipment",
    "Surgical and Perio",
    "Xray",
    "Restorative",
    "Operatory Products",
    "Infection Control",
    "Preventive"
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
      endDrawerEnableOpenDragGesture: true,
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade100),
        child: GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5,
          ),
          itemCount: 15,
          itemBuilder: (context, index) => getCategory(index),
        ),
      ),
    );
  }

  Widget getCategory(int index) {
    return
      AllCategoryTile(
        imagePath: images[index],
        categoryName: categoryNames[index],
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoryView()));
        },
      );
  }
}
