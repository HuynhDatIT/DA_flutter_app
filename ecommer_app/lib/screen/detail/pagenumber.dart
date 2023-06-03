import 'package:ecommer_app/screen/detail/product.dart';
import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

import '../../data/firebasedata.dart';
import '../../model/productDto.dart';

class PageNumber extends StatefulWidget {
  PageNumber({super.key});

  @override
  State<PageNumber> createState() => _PageNumberState();
}

class _PageNumberState extends State<PageNumber> {
  bool loadding = false;
  ProductDto productitem = [] as ProductDto;
  int numberofpage = 7;
  int currentpage = 0;
  @override
  void initState() {
    super.initState();

    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {
      loadding = true;
    });

    productitem = (await Firebasedata.getProducts(1)) as ProductDto;

    setState(() {
      loadding = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
        numberofpage,
        ((index) => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 80,
              crossAxisSpacing: 20,
              childAspectRatio: 0.8,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Product(product: productitem),
                ],
              );
            })));
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: pages[currentpage],
              ),
            ),
            NumberPaginator(
              numberPages: numberofpage,
              onPageChange: (index) {
                setState(() {
                  currentpage = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
