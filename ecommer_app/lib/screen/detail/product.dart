import 'package:ecommer_app/common/productItemWidget.dart';
import 'package:ecommer_app/data/firebasedata.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<ProductDto> itemproduct = [];
  @override
  void initState() {
    super.initState();

    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {});

    itemproduct = await Firebasedata.getProducts(null, null);

    setState(() {});
  }

  Widget build(BuildContext context) {
    List<ProductItemWidget> listwidget =
        itemproduct.map((e) => ProductItemWidget(product: e)).toList();

    return Container(
        height: MediaQuery.of(context).size.width / 1.72,
        child: SizedBox(
          child: ListView(
            children: listwidget,
          ),
        ));
  }
}
