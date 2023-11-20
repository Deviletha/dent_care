import 'package:flutter/material.dart';

class AccountCustomTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color; // Nullable Color
  final void Function()? onTap;

  const AccountCustomTile({
    Key? key,
    required this.title,
    required this.icon,
    this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
SizedBox(
  width: 25,
),
                Icon(icon,color: Colors.grey..shade300,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
