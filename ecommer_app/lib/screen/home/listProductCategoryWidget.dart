import 'package:ecommer_app/common/productItemWidget.dart';
import 'package:ecommer_app/common/tagWidget.dart';
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
          (e) => ProductItemWidget(
            product: e,
            height: MediaQuery.of(context).size.height / 2,
          ),
        )
        .toList();
    //List<List<ProductItemWidget>> groupListProductWidget;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          color: Colors.grey.withOpacity(0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TagWidget(title: 'Quần'),
              TagWidget(title: 'Áo'),
              TagWidget(title: 'Giày'),
            ],
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: listProductWidget,
                )),
                SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: listProductWidget,
                )),
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
