import 'package:flutter/material.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articles"),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100
        ),
        child: GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: .9,
          ),
          itemCount: 15,
          itemBuilder: (context, index) => getBestSelling(index),
        ),
      ),
    );
  }
  Widget getBestSelling(int index) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        // height: 100,
        //  width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bestselling.jpeg"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10),
                ),
              ),
              child: IconButton(
                  alignment: Alignment.topRight,
                  onPressed:
                      (){

                  },
                  icon: Icon(
                    Icons.favorite_border,
                  )),
            ),
            Text("Best Selling")
          ],
        ),
      ),
    );
  }
}
