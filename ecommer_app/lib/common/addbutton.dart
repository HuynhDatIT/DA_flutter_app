import 'package:ecommer_app/product/product.dart';
import 'package:flutter/material.dart';

import '../data/firebasedata.dart';

class Addbutton extends StatelessWidget {
  const Addbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // final products = await Firebasedata.getProducts();
        // print(products.length);
         Firebasedata.addProductSale();
        //Firebasedata.addProductNew();
        // Firebasedata.addProduct();
      },
      child: const Image(
        image: AssetImage('assets/icons/add.png'),
        height: 15,
        width: 15,
      ),
    );
  }
}
