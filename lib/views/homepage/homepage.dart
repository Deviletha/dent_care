import 'package:carousel_slider/carousel_slider.dart';
import 'package:danthal/views/brands/all_brands.dart';
import 'package:danthal/views/brands/brand_view.dart';
import 'package:danthal/views/cartpage/cart_page.dart';
import 'package:danthal/views/category/category_page.dart';
import 'package:danthal/views/category/category_view.dart';
import 'package:danthal/views/faq_page.dart';
import 'package:danthal/views/homepage/widgets/banner.dart';
import 'package:danthal/views/homepage/widgets/category_card.dart';
import 'package:danthal/views/homepage/widgets/headings.dart';
import 'package:danthal/views/homepage/widgets/product_card.dart';
import 'package:danthal/views/homepage/widgets/productcardcopy.dart';
import 'package:danthal/views/homepage/widgets/topbrand_card.dart';
import 'package:danthal/views/homepage/widgets/trending_card.dart';
import 'package:danthal/views/instruments/instruments.dart';
import 'package:danthal/views/privacy&terms.dart';
import 'package:danthal/views/registration/login_page.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:danthal/views/top_selling/top_selling.dart';
import 'package:danthal/views/product_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../theme/colors.dart';
import '../myorders/orders.dart';

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
  List<String> categoryIcons = [
    "assets/31699.png",
    "assets/1092435-200.png",
    "assets/2905774.png",
    "assets/5893759.png",
    "assets/31699.png",
    "assets/1092435-200.png",
    "assets/2905774.png",
    "assets/5893759.png"
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
      backgroundColor: Colors.white,
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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: CircleAvatar(
                    child: Image.asset("assets/profile_avatar.png"),
                  ),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    icon: Icon(Ionicons.notifications_outline,
                        color: Color(ColorT.themeColor))),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    icon: Icon(Ionicons.bag_outline,
                        color: Color(ColorT.themeColor))),
              ],
              //  bottom: AppBar(
              //   backgroundColor: Colors.transparent,
              //   leading: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: InkWell(
              //       onTap: (){
              //         Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => ProfilePage()));
              //       },
              //       child: CircleAvatar(
              //         child: Image.asset("assets/profile_avatar.png"),
              //       ),
              //     ),
              //   ),
              //   actions: [
              //     IconButton(
              //         onPressed: () {
              //           // Navigator.push(context,
              //           //     MaterialPageRoute(builder: (context) => LoginPage()));
              //         },
              //         icon: Icon(
              //           Iconsax.notification,
              //           color: Color(ColorT.themeColor)
              //         )),
              //     IconButton(
              //         onPressed: () {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) => CartPage()));
              //         },
              //         icon: Icon(
              //           Iconsax.bag_2,
              //           color: Color(ColorT.themeColor)
              //         )),
              //   ],
              // ),
              // bottom:
              // AppBar(
              //   toolbarHeight: 65,
              //   title: Container(
              //     height: 60,
              //     decoration: BoxDecoration(
              //         color: Colors.indigo.shade50,
              //         borderRadius:
              //         BorderRadius.all(Radius.circular(20))),
              //     child: Row(
              //       children: [
              //         IconButton(
              //             onPressed: () {
              //               // Navigator.push(context,
              //               //     MaterialPageRoute(builder: (context) => LoginPage()));
              //             },
              //             icon: Icon(
              //               Iconsax.search_normal,
              //               color: Colors.blue,
              //             )),
              //         Text("Search your product",style: TextStyle(color: Colors.black),)
              //       ],
              //     ),
              //   ),
              // ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) => LoginPage()));
                              },
                              icon: Icon(
                                Icons.search,
                                color: Colors.blue,
                              )),
                          Text(
                            "Search your product",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CarouselSlider.builder(
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
                    TitleText(
                      heading: "Categories",
                      buttonText: "View all",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryPage()));
                      },
                    ),
                    CarouselSlider.builder(
                      itemCount: categoryIcons.length,
                      itemBuilder: (context, index, realIndex) {
                        return getCategory(index);
                      },
                      options: CarouselOptions(
                        height: 100,
                        aspectRatio: 15 / 6,
                        viewportFraction: .30,
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
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Ionicons.bag_outline, size: 20,),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Recommended For You",
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .55,
                      ),
                      itemCount: 4,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => getInstruments(index),
                    ),
                    TitleText(
                      heading: "Top Brands",
                      buttonText: "View all",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllBrands()));
                      },
                    ),
                    // GridView.builder(
                    //   physics: ScrollPhysics(),
                    //   shrinkWrap: true,
                    //   gridDelegate:
                    //       const SliverGridDelegateWithFixedCrossAxisCount(
                    //     crossAxisCount: 4,
                    //     childAspectRatio: 1.20,
                    //   ),
                    //   itemCount: 8,
                    //   padding: EdgeInsets.zero,
                    //   itemBuilder: (context, index) => getTopBrand(index),
                    // ),

                    CarouselSlider.builder(
                      itemCount: topImages.length,
                      itemBuilder: (context, index, realIndex) {
                        return getTopBrand(index);
                      },
                      options: CarouselOptions(
                        height: 65,
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
                    CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (context, index, realIndex) {
                        return getBanner1(index);
                      },
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height / 3.5,
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
                    TitleText(
                      heading: "Top Selling",
                      buttonText: "View all",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopSelling()));
                      },
                    ),
                    CarouselSlider.builder(
                      itemCount: 4,
                      itemBuilder: (context, index, realIndex) {
                        return getInstrumentsCopy(index);
                      },
                      options: CarouselOptions(
                        height: 420,
                        aspectRatio: 15/9,
                        viewportFraction: .7,
                        initialPage: 0,
                        reverse: false,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {},
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    // ListView.builder(
                    //   physics: ScrollPhysics(),
                    //   shrinkWrap: true,
                    //   addSemanticIndexes: true,
                    //   itemCount: 2,
                    //   scrollDirection: Axis.horizontal,
                    //   itemBuilder: (context, index) => getInstruments(index),
                    // ),
                    // GridView.builder(
                    //   physics: ScrollPhysics(),
                    //   shrinkWrap: true,
                    //   gridDelegate:
                    //       const SliverGridDelegateWithFixedCrossAxisCount(
                    //     crossAxisCount: 2,
                    //     childAspectRatio: .50,
                    //   ),
                    //   itemCount: 2,
                    //   padding: EdgeInsets.zero,
                    //   itemBuilder: (context, index) => getInstrumentsCopy(index),
                    // ),
                    TitleText(
                      heading: "Trending Products",
                      buttonText: "View all",
                      onPressed: () {},
                    ),
                    CarouselSlider.builder(
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
                    TitleText(
                      heading: "Instruments",
                      buttonText: "View All",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllInstruments()));
                      },
                    ),
                    GridView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .55,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) => getProducts(index),
                    ),
                  ]),
                ),
              ],
            )),
          ],
        ));
  }

  Widget getInstrumentsCopy(int index1) {
    return ProductTileCopy(
      itemName: "PRODUCT ITEM NAME",
      imagePath: images1[index1],
      description: "Dummy Description for product card",
      actualPrice: "₹ 20000",
      discount: "20% Off",
      totalPrice: "₹ 25000",
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      onPressed: () {},
    );
  }

  Widget getInstruments(int index1) {
    return ProductTile(
      itemName: "PRODUCT ITEM NAME",
      imagePath: images1[index1],
      description: "Dummy Description for product card",
      actualPrice: "₹ 20000",
      discount: "20% Discount",
      totalPrice: "₹ 25000",
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      onPressed: () {},
    );
  }

  Widget getProducts(int index1) {
    return ProductTile(
      itemName: "PRODUCT ITEM NAME",
      imagePath: images[index1],
      description: "Dummy Description for product card",
      actualPrice: "₹ 20000 ",
      discount: "20% Off",
      totalPrice: "₹ 25000",
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      onPressed: () {},
    );
  }

  Widget getTopBrand(int index) {
    return TopBrandTile(
      imagePath: topImages[index],
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BrandView()));
      },
    );
  }

  Widget getCategory(int index) {
    return CategoryTile(
      imagePath: categoryIcons[index],
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
    return BannerTile(
      imagePath: banner[index],
    );
  }

  Widget getTrending(int index) {
    return TrendingTile(
      itemName: "PRODUCT ITEM NAME",
      discount: "15% Off",
      description: "Dummy Description for product card",
      mrp: "₹ 25000",
      price: "₹ 20000",
      imagePath: "assets/bestselling.jpeg",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
    );
  }
}
