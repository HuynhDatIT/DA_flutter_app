import 'package:flutter/material.dart';

import '../../common/productItemWidget.dart';
import '../../model/productDto.dart';

class ListProductWidget extends StatefulWidget {
  List<ProductDto> listproduct;
  String title;
  ListProductWidget(
      {super.key, required this.listproduct, required this.title});

  @override
  _ListProductWidgetState createState() => _ListProductWidgetState();
}

class _ListProductWidgetState extends State<ListProductWidget> {
  @override
  Widget build(BuildContext context) {
    List<ProductItemWidget> listProductWidget =
        widget.listproduct.map((e) => ProductItemWidget(product: e)).toList();

    return SizedBox(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                Text(
                  'View all (${listProductWidget.length.toString()})',
                  style: TextStyle(fontSize: 10, color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width / 1.72,
            child: SizedBox(
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listProductWidget),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Divider(
              height: 1,
              color: Color.fromARGB(255, 146, 143, 143),
            ),
          ),
        ],
      ),
    );
  }
}
