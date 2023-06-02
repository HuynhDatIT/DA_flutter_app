import 'package:ecommer_app/model/productDto.dart';
import 'package:flutter/material.dart';
import 'product.dart';

class Product extends StatelessWidget {
  ProductDto product_widget;
  Product({super.key, required this.product_widget});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            product_widget.path ??'',
            width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width/2.8,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(product_widget.name ??''),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(product_widget.category ??''),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Padding(padding: EdgeInsets.only(right: 10)),
            Text(''),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: TextButton(
                onPressed: () {},
                child: Column(
                  children: [Image.asset('assets/icons/add.png')],
                ),
              ),
            ),
            Text('50.000')
          ],
        ),
      ],
    );
  }
}
