import 'package:ecommer_app/common/bottom.dart';
import 'package:ecommer_app/screen/home/listProductCategoryWidget.dart';
import 'package:ecommer_app/screen/home/listProductWidget.dart';
import 'package:ecommer_app/screen/home/topwidget.dart';
import 'package:flutter/material.dart';

import '../../data/firebasedata.dart';
import '../../data/mockData.dart';
import '../../model/productDto.dart';

class MainHomeScreen extends StatefulWidget {
  MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  bool loadding = false;
  List<ProductDto> productsSale = [];
  List<ProductDto> productsNew = [];
  List<ProductDto> productsNone = [];
  List<ProductDto> productsCategory = [];

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {
      loadding = true;
    });

    productsSale = await Firebasedata.getProducts(1, null);
    productsNone = await Firebasedata.getProducts(2, null);
    productsNew = await Firebasedata.getProducts(3, null);
    productsCategory = await Firebasedata.getProducts(null, 1);

    setState(() {
      loadding = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: loadding
            ? CircularProgressIndicator()
            : Column(
                children: [
                  Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 3,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Topwidget(listImage: MockData.listImage),
                              )),
                          ListProductWidget(
                              listproduct: productsSale,
                              title: 'SẢN PHẨM GIẢM GIÁ'),
                          ListProductWidget(
                              listproduct: productsNew,
                              title: 'SẢN PHẨM MỚI NHẤT'),
                          ListProductCategoryWidget(
                              listProduct: productsCategory),
                          ListProductWidget(
                              listproduct: productsNone,
                              title: 'SẢN PHẨM DÀNH CHO BẠN'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: BottomCustom())
                ],
              ),
      ),
    );
  }
}
