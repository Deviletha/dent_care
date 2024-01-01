import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: const [
                Image(
                  image: AssetImage("assets/genuine.png"),
                  color: Colors.white,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("100% GENUINE",
                        style: TextStyle(
                            color: Colors.white, fontSize: 10)),
                    Text("PRODUCTS",
                        style: TextStyle(
                            color: Colors.white, fontSize: 10)),
                  ],
                )
              ],
            ),
            Container(
              color: Colors.white,
              width: 2,
              height: 25,
            ),
            Row(
              children: const [
                Image(
                  image:
                  AssetImage("assets/expressdelivery.png"),
                  color: Colors.white,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SUPER-FAST",
                        style: TextStyle(
                            color: Colors.white, fontSize: 10)),
                    Text("DELIVERY",
                        style: TextStyle(
                            color: Colors.white, fontSize: 10)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
