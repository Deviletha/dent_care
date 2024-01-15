import 'package:carousel_slider/carousel_slider.dart';
import 'package:danthal/views/product_details/widgets/product_image_card.dart';
import 'package:danthal/views/product_details/widgets/related_product_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../theme/colors.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  List<String> images1 = [
    "assets/pr11.png",
    "assets/pr22.png",
    "assets/pr33.png",
    "assets/pr44.png",
  ];

  List<String> featuredItems = [
    "assets/denta-strength.png",
    "assets/dental_product.png",
    "assets/denta-strength.png",
    "assets/dental_product.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                  itemCount: featuredItems.length,
                  itemBuilder: (context, index, realIndex) {
                    return getFeatured(index);
                  },
                  options: CarouselOptions(
                    height: 370,
                    aspectRatio: 9,
                    viewportFraction: 1,
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(" Abc Medicals",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade600)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "PRODUCT ITEM NAME",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text("₹ 20000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.red)),
                            SizedBox(
                              width: 5,
                            ),
                            Text("₹ 22000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  decorationStyle: TextDecorationStyle.solid,
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Text("20% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.green))
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Ionicons.heart_outline,
                          size: 25,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey.shade200,
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.remove,
                          size: 12,
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.add,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "product description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing "
                    "and typesetting industry. Lorem Ipsum has been "
                    "the industry's standard dummy text ever since the "
                    "1500s, when an unknown printer took a galley of "
                    "type and scrambled it to make a type specimen book.",
                    style:
                        TextStyle(
                          wordSpacing: 2,
                            letterSpacing: .50,
                            fontSize: 12, color: Colors.grey.shade600)),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 2,
                ),
                Text(
                  "Related products",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider.builder(
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return getRelatedProducts(index);
                  },
                  options: CarouselOptions(
                    height: 280,
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
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                  ),
                ],

                borderRadius: BorderRadius.zero,
                color: Color(ColorT.themeColor),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 2,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))),
          Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.zero,
                color: Color(ColorT.redColor),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 2,
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "BUY NOW",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ))),
        ],
      ),
    );
  }

  Widget getFeatured(int index) {
    return ProductImageTile(
      imagePath: featuredItems[index],
      // onPressed: () {
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      // },
    );
  }

  Widget getRelatedProducts(int index1) {
    return RelatedProductTile(
      itemName: "PRODUCT NAME",
      imagePath: images1[index1],
      companyName: "Abc Company",
      actualPrice: "₹ 20000",
      description: "dummy description",
      totalPrice: "₹ 25000",
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      onPressed: () {},
    );
  }
}
