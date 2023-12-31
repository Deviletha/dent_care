import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String brandName;
  final String imagePath;
  final void Function()? onTap;

  const BrandCard(
      {super.key,
      required this.brandName,
      required this.imagePath,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              brandName,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
