import 'package:ecommer_app/common/productItemWidget.dart';
import 'package:ecommer_app/common/tagWidget.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:ecommer_app/screen/admin/filter_admin.dart';
import 'package:flutter/material.dart';

import '../../data/firebasedata.dart';

class ListProductCategoryWidget extends StatefulWidget {
  List<ProductDto> listProduct;
  ListProductCategoryWidget({super.key, required this.listProduct});

  @override
  _ListProductCategoryWidgetState createState() =>
      _ListProductCategoryWidgetState();
}

class _ListProductCategoryWidgetState extends State<ListProductCategoryWidget> {
  bool isSelectQuan = true;
  bool isSelectAo = false;
  bool isSelectGiay = false;

  Future<void> fetchData(int categoryId) async {
    widget.listProduct = await Firebasedata.getProducts(2, categoryId);
    print(widget.listProduct.length);
  }

  @override
  Widget build(BuildContext context) {
    List<ProductItemWidget> listProductWidget = widget.listProduct
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
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelectQuan = true;
                      isSelectAo = false;
                      isSelectGiay = false;
                      print('Quan');
                      fetchData(1);
                    });
                  },
                  child: TagWidget(
                    title: 'Quần',
                    isSelected: isSelectQuan,
                  )),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelectQuan = false;
                    isSelectAo = true;
                    isSelectGiay = false;
                    print('Ao' + isSelectAo.toString());
                    fetchData(2);
                  });
                },
                child: TagWidget(
                  title: 'Áo',
                  isSelected: isSelectAo,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelectQuan = false;
                      isSelectAo = false;
                      isSelectGiay = true;
                      print('Giay');
                      fetchData(3);
                    });
                  },
                  child: TagWidget(
                    title: 'Giày',
                    isSelected: isSelectGiay,
                  )),
            ],
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.width / 0.8,
            padding: EdgeInsets.all(5),
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              childAspectRatio: 1.7,
              children: listProductWidget,
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
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
