import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class CategoryTile extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final void Function()? onTap;
  const CategoryTile({super.key, required this.itemName, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        ),
                    width: 35,
                    height: 35,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fitHeight,
                    )),
              ),
              Text(
                itemName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
