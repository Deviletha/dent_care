import 'package:flutter/material.dart';

class AllCategoryTile extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final void Function()? onTap;

  const AllCategoryTile(
      {super.key, required this.categoryName, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 3,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(imagePath),
            ),
            title: Text(
              categoryName,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
