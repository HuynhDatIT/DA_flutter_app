import 'package:ecommer_app/common/productItemWidget.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:flutter/material.dart';

class ListProductCategoryWidget extends StatefulWidget {
  List<ProductDto> listProduct;
  ListProductCategoryWidget({super.key, required this.listProduct});

  @override
  _ListProductCategoryWidgetState createState() =>
      _ListProductCategoryWidgetState();
}

class _ListProductCategoryWidgetState extends State<ListProductCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    List<ProductItemWidget> listProductWidget = widget.listProduct
        .take(2)
        .map(
          (e) => ProductItemWidget(product: e),
        )
        .toList();
    //List<List<ProductItemWidget>> groupListProductWidget;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.black),
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: Row(children: listProductWidget))),
                Expanded(
                    child: Container(
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: Row(children: listProductWidget))),
              ],
            )),
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Divider(
            height: 1,
            color: Color.fromARGB(255, 146, 143, 143),
          ),
        )
      ],
    );
  }
}
