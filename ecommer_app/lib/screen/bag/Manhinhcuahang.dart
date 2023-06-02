import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String giadagiam;
  final String giachuagiam;
  final String imagePath;
  final loai;
  final String sl;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.giadagiam,
    required this.giachuagiam,
    required this.imagePath,
    required this.loai,
    required this.sl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                imagePath,
                height: 150,
              ),
            ),

            // item name
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            MaterialButton(
              color: Colors.red,
              onPressed: onPressed,
              
              child: Text(              
                '\$' + giadagiam,
                style: TextStyle(
                  
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
