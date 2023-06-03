import 'package:ecommer_app/model/productDto.dart';
import 'package:flutter/material.dart';

import '../../common/productItemWidget.dart';

class Product extends StatefulWidget {
  ProductDto product;
  Product({super.key, required this.product});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {  
   ProductItemWidget itemproduct =
        widget.product.map((e) => ProductItemWidget(product: e)).toList();
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.width / 1.72,
            child: Column(
              children: itemproduct,
            ),
            ),
      ],
    );
  }
}
