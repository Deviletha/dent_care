import 'package:carousel_slider/carousel_slider.dart';
import 'package:danthal/views/brands/all_brands.dart';
import 'package:danthal/views/brands/brand_view.dart';
import 'package:danthal/views/category/category_page.dart';
import 'package:danthal/views/category/category_view.dart';
import 'package:danthal/views/homepage/widgets/banner.dart';
import 'package:danthal/views/homepage/widgets/category_card.dart';
import 'package:danthal/views/homepage/widgets/product_card.dart';
import 'package:danthal/views/homepage/widgets/topbrand_card.dart';
import 'package:danthal/views/homepage/widgets/trending_card.dart';
import 'package:danthal/views/instruments/instruments.dart';
import 'package:danthal/views/registration/login_page.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:danthal/views/top_selling/top_selling.dart';
import 'package:danthal/views/product_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../Components/title_widget.dart';
import '../../theme/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    "assets/7-Common-Plastic-Dental-Equipment-1200x900.jpg",
    "assets/dental-tools-1.jpg",
    "assets/dentist-equipment.jpg",
    "assets/treatment-units.jpg"
  ];
  List<String> categoryNames = [
    "Ayurveda",
    "Anesthetics",
    "Endodontics",
    "CAD/CAM",
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

  List<String> images1 = [
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/images.png"
  ];
  List<String> topImages = [
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/Tokuyama.jpeg",
    "assets/colgate.png",
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/Tokuyama.jpeg",
    "assets/colgate.png"
  ];
  List<String> topNames = [
    "Kerr",
    "NSK",
    "SybroEndo",
    "Tokuyama",
    "Colgate",
    "Kerr",
    "NSK",
    "SybroEndo",
    "Tokuyama",
    "Colgate"
  ];
  List<String> banner = [
    "assets/Dental_banner.png",
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(
                Iconsax.search_normal,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(
                Iconsax.notification,
                color: Colors.white,
              )),
        ],
      ),
      drawer: Drawer(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Color(ColorT.themeColor),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(210, 90),
                    bottomRight: Radius.elliptical(210, 90),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Image.asset(
                            "assets/Logo.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "BEST ONLINE",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "DENTAL PRODUCTS",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "DELIVERY SERVICES",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Heading(
                    text: "Shop By Category",
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryPage()));
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                itemCount: topImages.length,
                itemBuilder: (context, index, realIndex) {
                  return getCategory(index);
                },
                options: CarouselOptions(
                  height: 100,
                  aspectRatio: 15 / 6,
                  viewportFraction: .20,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Heading(
                    text: "Trending Products",
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return getTrending(index);
                },
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 9,
                  viewportFraction: .9,
                  initialPage: 0,
                  // enableInfiniteScroll: true,
                  reverse: false,
                  // autoPlay: true,
                  enlargeCenterPage: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Heading(
                    text: "Top Brands",
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AllBrands()));
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                itemCount: topImages.length,
                itemBuilder: (context, index, realIndex) {
                  return getTopBrand(index);
                },
                options: CarouselOptions(
                  height: 100,
                  aspectRatio: 15 / 6,
                  viewportFraction: .20,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Heading(
                    text: "Special Deals % Offers",
                  ),
                  Text("Get special discounts and offers on products")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: (context, index, realIndex) {
                  return getBanner(index);
                },
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 4,
                  aspectRatio: 15 / 6,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading(
                        text: "Top Selling",
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopSelling()));
                          },
                          child: Text(
                            "View all",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ))
                    ],
                  ),
                  GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .65,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) => getInstruments(index),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                itemCount: 4,
                itemBuilder: (context, index, realIndex) {
                  return getBanner1(index);
                },
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 4,
                  aspectRatio: 15 / 6,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading(
                        text: "Instruments",
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllInstruments()));
                          },
                          child: Text(
                            "View all",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ))
                    ],
                  ),
                  GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .65,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) => getProducts(index),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return getBanner1(index);
                },
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 4,
                  aspectRatio: 15 / 6,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading(
                        text: "Dental Products",
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ))
                    ],
                  ),
                  GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .65,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) => getInstruments(index),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getInstruments(int index1) {
    return ProductTile(
    itemName: "Item Name",
      imagePath: images1[index1],
      description: "Description",
      actualPrice: "₹ 200 ",
      discount: "20% Discount",
      totalPrice: "MRP : 250",
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      onPressed: (){},
    );

  }

  Widget getProducts(int index1) {
    return ProductTile(
      itemName: "Item Name",
      imagePath: images[index1],
      description: "Description",
      actualPrice: "₹ 200 ",
      discount: "20% Discount",
      totalPrice: "MRP : 250",
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      onPressed: (){},
    );

  }

  Widget getTopBrand(int index) {
    return TopBrandTile(
      imagePath: topImages[index],
      itemName: topNames[index],
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BrandView()));
      },
    );
  }

  Widget getCategory(int index) {
    return
      CategoryTile(
        imagePath: topImages[index],
        itemName: categoryNames[index],
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CategoryView()));
        },
      );
  }

  Widget getBanner(int index) {
    return BannerTile(
      imagePath: banner[index],
    );
  }

  Widget getBanner1(int index) {
    return
      BannerTile(
        imagePath: banner[index],
      );
  }

  Widget getTrending(int index) {
    return
      TrendingTile(
        itemName: "Item Name",
       discount: "15% Discount",
        description: "Description",
        mrp: "MRP : 250",
        price: "₹ 200 ",
        imagePath: "assets/bestselling.jpeg",
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailsPage()));
        },
      );
  }
}
