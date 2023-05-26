import 'package:flutter/material.dart';

class BottomCustom extends StatefulWidget {
  const BottomCustom({Key? key}) : super(key: key);

  @override
  _BottomCustomState createState() => _BottomCustomState();
}

class _BottomCustomState extends State<BottomCustom> {
  void IconEven(String title) {
    print(title);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconCustomer(Icons.home_outlined, "Home", Colors.red),
            IconCustomer(Icons.shopping_cart_outlined, "Shoping", Colors.black),
            IconCustomer(Icons.shopping_bag_outlined, "Bag", Colors.black),
            IconCustomer(Icons.person_3_outlined, "Profier", Colors.black),
          ],
        ));
  }
}

Widget IconCustomer(IconData iconData, String title, Color color) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => {},
          icon: Icon(
            iconData,
            color: color,
          ),
        ),
        Text(
          title,
          style: TextStyle(color: color),
        )
      ],
    ),
  );
}
