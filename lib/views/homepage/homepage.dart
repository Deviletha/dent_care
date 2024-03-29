import 'package:carousel_slider/carousel_slider.dart';
import 'package:danthal/views/brands/all_brands.dart';
import 'package:danthal/views/brands/brand_view.dart';
import 'package:danthal/views/cartpage/cart_page.dart';
import 'package:danthal/views/category/category_page.dart';
import 'package:danthal/views/category/category_view.dart';
import 'package:danthal/views/homepage/widgets/banner.dart';
import 'package:danthal/views/homepage/widgets/bannercard.dart';
import 'package:danthal/views/homepage/widgets/category_card.dart';
import 'package:danthal/views/homepage/widgets/featured_card.dart';
import 'package:danthal/views/homepage/widgets/headings.dart';
import 'package:danthal/views/homepage/widgets/product_card.dart';
import 'package:danthal/views/homepage/widgets/productcardcopy.dart';
import 'package:danthal/views/homepage/widgets/topbrand_card.dart';
import 'package:danthal/views/homepage/widgets/trending_card.dart';
import 'package:danthal/views/instruments/instruments.dart';
import 'package:danthal/views/profile_page/profile_page.dart';
import 'package:danthal/views/top_selling/top_selling.dart';
import 'package:danthal/views/product_details/product_details.dart';
import 'package:danthal/views/trending_products/trending_products_page.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../theme/colors.dart';
import '../faq_page.dart';
import '../featured_products/featured_products_page.dart';
import '../myorders/orders.dart';
import '../privacy&terms.dart';
import '../registration/login_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    "assets/dentInstrument1.png",
    "assets/dentInstrument2.png",
    "assets/dentInstrument3.png",
    "assets/dentInstrument4.png"
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

  List<String> featuredItems = [
    "assets/denta-strength.png",
    "assets/dental_product.png",
    "assets/denta-strength.png",
    "assets/dental_product.png",
  ];
  List<String> images1 = [
    "assets/pr11.png",
    "assets/pr22.png",
    "assets/mouthwash.png",
    "assets/pr33.png",
    "assets/pr44.png",
  ];
  List<String> featureCategory = [
    "assets/cat_pic1.jpg",
    "assets/cat_pic2.png",
    "assets/cat_pic3.png",
    "assets/cat_pic4.png",
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
    "assets/cat1.png",
    "assets/cat2.png",
    "assets/cat4.png",
    "assets/cat6.png",
    "assets/catt7.png",
    "assets/cat8.png",
    "assets/cat1.png",
    "assets/cat2.png",
    "assets/cat4.png",
    "assets/cat1.png",
    "assets/cat2.png",
    "assets/cat4.png",
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
    "assets/g2.jpg",
    "assets/g2.jpg",
  ];
  List<String> slider = [
    "assets/g.jpg",
    "assets/g.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 40,
          title: Image.asset("assets/logo5.png", height: 20,),
          // Row(
          //   children: [
          //     Icon(
          //       Icons.location_on_outlined,
          //       size: 20,
          //     ),
          //     Text(
          //       "Kerala, India",
          //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          //     ),
          //   ],
          // ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Icon(
                Ionicons.notifications_outline, size: 20,
                // Color(ColorT.themeColor)
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Icon(
                  FluentIcons.cart_16_regular,
                // Color(ColorT.themeColor)
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
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
              pinned: true,
              floating: false,
              toolbarHeight: 45,
              title: Column(
                children: [
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(ColorT.themeColor),
                        // color: Colors.white,
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
                              color: Colors.white,
                              size: 15,
                            )),
                        Text(
                          "Search Products here ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              letterSpacing: 1.5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                Column(children: [
                  TitleText(
                    heading: "CATEGORIES",
                    buttonText: "See all",
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
                      height: 110,
                      aspectRatio: 15 / 6,
                      viewportFraction: .25,
                      initialPage: 0,
                      clipBehavior: Clip.hardEdge,
                      padEnds: false,
                      animateToClosest: true,
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
                  Column(
                    children: [
                      TitleText(
                        heading: "TOP SELLING",
                        buttonText: "See all",
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
                          height: 290,
                          aspectRatio: 15 / 9,
                          viewportFraction: .60,
                          initialPage: 0,
                          padEnds: false,
                          reverse: false,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {},
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider.builder(
                    itemCount: 2,
                    itemBuilder: (context, index, realIndex) {
                      return getBanner(index);
                    },
                    options: CarouselOptions(
                      height: 120,
                      aspectRatio: 15 / 6,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      padEnds: false,
                      // autoPlay: true,
                      enlargeCenterPage: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (index, reason) {},
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      TitleText(
                        heading: "FEATURED PRODUCTS",
                        buttonText: "See all",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeaturedProducts()));
                        },
                      ),
                      CarouselSlider.builder(
                        itemCount: featuredItems.length,
                        itemBuilder: (context, index, realIndex) {
                          return getFeatured(index);
                        },
                        options: CarouselOptions(
                          height: 400,
                          aspectRatio: 9,
                          viewportFraction: .85,
                          initialPage: 0,
                          // enableInfiniteScroll: true,
                          reverse: false,
                          // autoPlay: true,
                          enlargeCenterPage: false,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          onPageChanged: (index, reason) {},
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BannerCard(),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      TitleText(
                        heading: "TRENDING PRODUCTS",
                        buttonText: "See all",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrendingProducts()));
                        },
                      ),
                      CarouselSlider.builder(
                        itemCount: 3,
                        itemBuilder: (context, index, realIndex) {
                          return getTrending(index);
                        },
                        options: CarouselOptions(
                          height: 300,
                          aspectRatio: 9,
                          viewportFraction: .80,
                          initialPage: 0,
                          // enableInfiniteScroll: true,
                          reverse: false,
                          padEnds: false,
                          // autoPlay: true,
                          enlargeCenterPage: false,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          onPageChanged: (index, reason) {},
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/brand_bg.png",
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.white54, BlendMode.lighten))),
                    child: Column(
                      children: [
                        TitleText(
                          heading: "TOP BRANDS",
                          buttonText: "See all",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllBrands()));
                          },
                        ),
                        CarouselSlider.builder(
                          itemCount: topImages.length,
                          itemBuilder: (context, index, realIndex) {
                            return getTopBrand(index);
                          },
                          options: CarouselOptions(
                            height: 95,
                            aspectRatio: 15 / 6,
                            viewportFraction: .25,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: false,
                            padEnds: false,
                            enlargeCenterPage: false,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            onPageChanged: (index, reason) {},
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Ionicons.bag_outline,
                                size: 20, color: Color(ColorT.themeColor)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "RECOMMENDED FOR YOU",
                              style: TextStyle(
                                letterSpacing: .80,
                                  fontWeight: FontWeight.bold,
                                  color: Color(ColorT.themeColor),
                                  fontSize: 17),
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
                            childAspectRatio: .70,
                          ),
                          itemCount: 4,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) =>
                              getInstruments(index),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CarouselSlider.builder(
                    itemCount: 2,
                    itemBuilder: (context, index, realIndex) {
                      return getBanner1(index);
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height / 4.5,
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
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      TitleText(
                        heading: "FEATURE CATEGORY",
                        buttonText: "See all",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryPage()));
                        },
                      ),
                      CarouselSlider.builder(
                        itemCount: 4,
                        itemBuilder: (context, index, realIndex) {
                          return getFeatureCategory(index);
                        },
                        options: CarouselOptions(
                          height: 350,
                          aspectRatio: 15 / 9,
                          viewportFraction: .60,
                          initialPage: 0,
                          padEnds: false,
                          reverse: false,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {},
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      TitleText(
                        heading: "INSTRUMENTS",
                        buttonText: "See All",
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
                          childAspectRatio: .70,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) => getProducts(index),
                      ),
                    ],
                  )
                ]),
              ],
            )),
          ],
        ));
  }

  Widget getInstrumentsCopy(int index1) {
    return ProductTileCopy(
      itemName: "PRODUCT NAME",
      imagePath: images1[index1],
      description: "Dummy Description for product card",
      actualPrice: "₹ 20000",
      discount: "20% Off",
      totalPrice: "₹ 25000",
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      wishlist: () {},
    );
  }

  Widget getFeatureCategory(int index1) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(
              blurStyle: BlurStyle.outer,
              spreadRadius: 1,
              color: Colors.grey.shade500,
              blurRadius: 4,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage(featureCategory[index1]), fit: BoxFit.fitHeight)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(ColorT.redColor),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Categories Name",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    //   ProductTileCopy(
    //   itemName: "PRODUCT NAME",
    //   imagePath: images1[index1],
    //   description: "Dummy Description for product card",
    //   actualPrice: "₹ 20000",
    //   discount: "20% Off",
    //   totalPrice: "₹ 25000",
    //   onTap: () {
    //     Navigator.push(context,
    //         MaterialPageRoute(builder: (context) => ProductDetailsPage()));
    //   },
    //   onPressed: () {},
    // );
  }

  Widget getInstruments(int index1) {
    return ProductTile(
      itemName: "PRODUCT NAME",
      imagePath: images1[index1],
      description: "Dummy Description for product card",
      actualPrice: "₹ 20000",
      discount: "20% Off",
      totalPrice: "25000",
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      wishlist: () {},
    );
  }

  Widget getProducts(int index1) {
    return ProductTile(
      itemName: "PRODUCT NAME",
      imagePath: images[index1],
      description: "Dummy Description for product card",
      actualPrice: "₹ 20000 ",
      discount: "20% Off",
      totalPrice: "25000",
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      wishlist: () {},
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
      color: Colors.red,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryView(
                      category: categoryNames[index],
                    )));
      },
    );
  }

  Widget getBanner1(int index) {
    return BannerTile(
      imagePath: banner[index],
    );
  }

  Widget getBanner(int index) {
    return BannerTile(
      imagePath: slider[index],
    );
  }

  Widget getTrending(int index) {
    return TrendingTile(
      itemName: "PRODUCT NAME",
      discount: "15% Off",
      // description: "Dummy Description for product card",
      mrp: "₹ 25000",
      price: "₹ 20000",
      imagePath: "assets/mouthwash.png",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
    );
  }

  Widget getFeatured(int index) {
    return FeaturedTile(
      itemName: "PRODUCT NAME",
      price: "₹ 20000",
      imagePath: featuredItems[index],
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
    );
  }
}
