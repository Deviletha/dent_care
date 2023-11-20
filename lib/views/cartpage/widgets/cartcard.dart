import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../theme/colors.dart';

class CartTile extends StatefulWidget {
  final String imagePath;
  final String itemName;
  final String description;
  final String price;
  final String quantity;
  final void Function()? onPressed;
  final void Function()? onPressedAdd;
  final void Function()? onPressedLess;

  const CartTile(
      {super.key,
      required this.imagePath,
      required this.itemName,
      required this.description,
      required this.price,
      this.onPressed,
      this.onPressedAdd,
      this.onPressedLess,
      required this.quantity});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {

  late int _selectedQuantity;

  @override
  void initState() {
    super.initState();
    _selectedQuantity = int.parse(widget.quantity);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.red.shade100,
                  blurRadius: 1,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 150,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.imagePath,
                        ),
                        fit: BoxFit.cover),
                  ),
                  // Image border// Image radius
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.itemName),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(ColorT.textColor),
                    ),
                  ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Text(" Qty "),
                          SizedBox(
                            width: 50,
                            child: Center(
                              child: DropdownButton<int>(
                                value: _selectedQuantity,
                                items: List.generate(10, (index) => index + 1)
                                    .map<DropdownMenuItem<int>>(
                                      (value) => DropdownMenuItem<int>(
                                    value: value,
                                    child: Text(
                                      value.toString(),
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedQuantity = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.center,
                      onPressed: widget.onPressed,
                      icon: Icon(
                        Ionicons.trash_outline,
                        size: 18,
                        color: Colors.red,
                      ),
                    )
                ],
              )
  ]
              )
              ) ],
          )),
    );
  }
}
