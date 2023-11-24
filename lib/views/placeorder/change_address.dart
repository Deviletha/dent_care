import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../theme/colors.dart';

class DeliveryAddressPage extends StatefulWidget {
  const DeliveryAddressPage({super.key});

  @override
  State<DeliveryAddressPage> createState() => _DeliveryAddressPageState();
}

class _DeliveryAddressPageState extends State<DeliveryAddressPage> {
  List<String> addressType = [
    "Home","Work"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Delivery Address"),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                      getAddressRow(index),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) {
            //     return AddAddress();
            //   }),
            // );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(ColorT.themeColor),
            shadowColor: Colors.teal[300],
            minimumSize: Size.fromHeight(50),
          ),
          child: Text("Add New Address"),
        ),
      ),
    );
  }
  Widget getAddressRow(int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                // addressList == null
                //     ? Shimmer.fromColors(
                //   baseColor: Colors.grey[300]!,
                //   highlightColor: Colors.grey[100]!,
                //   child: Container(
                //     width: double.infinity,
                //     height: 20,
                //     color: Colors.white,
                //   ),
                // )
                //     :
                Text(
                  "Test Address",
                  style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "9988776655",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "City",
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pin code: 657489",
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "State",
                  // style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Card(
                  color: Colors.indigo.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(addressType[index]),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(
                  Ionicons.pencil,
                  color: Colors.red,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}