import 'package:ecommer_app/screen/detail/product.dart';
import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class PageNumber extends StatefulWidget {
  const PageNumber({super.key});

  @override
  State<PageNumber> createState() => _PageNumberState();
}

class _PageNumberState extends State<PageNumber> {
  int numberofpage = 6;
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      numberofpage,
      (index) => Product(),
    );
    return Column(
      children: [
        Expanded(
            child: Container(
          child: pages[currentpage],
        )),
        NumberPaginator(
          numberPages: numberofpage,
          onPageChange: (index) {
            setState(() {
              currentpage = index;
            });
          },
        )
      ],
    );
  }
}
