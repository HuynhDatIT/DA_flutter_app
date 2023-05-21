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
        .take(12)
        .map(
          (e) => ProductItemWidget(product: e),
        )
        .toList();
    List<List<ProductItemWidget>> groupListProductWidget;

    return Column(
      children: [Container(), Container()],
    );
  }
}
