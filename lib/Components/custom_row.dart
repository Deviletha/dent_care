import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    required this.text,
    required this.icon,
    super.key,
    required this.onTap,

  });

  final String text;
  final Icon icon;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                         ),
                      child: icon,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(text),

                  ],
                ),
                Icon(Iconsax.arrow_right_3),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
