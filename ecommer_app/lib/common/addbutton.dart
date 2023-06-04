import 'package:ecommer_app/model/productDto.dart';
import 'package:flutter/material.dart';

import '../data/firebasedata.dart';

class Addbutton extends StatelessWidget {
  ProductDto productDto;
  String accountId;
  Addbutton({Key? key, required this.productDto, required this.accountId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // final products = await Firebasedata.getProducts();
        // print(products.length);
        Firebasedata.addCart(productDto, accountId, 1);
        //  Firebasedata.addProductNew();
        //  Firebasedata.addProductSale();
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
