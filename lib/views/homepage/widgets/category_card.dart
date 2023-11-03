import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final void Function()? onTap;
  const CategoryTile({super.key, required this.itemName, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(360),
                    color: Colors.white),
                width: 60,
                height: 60,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            itemName,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
