import 'package:ecommer_app/common/bottom.dart';
import 'package:ecommer_app/screen/home/listProductCategoryWidget.dart';
import 'package:ecommer_app/screen/home/listProductWidget.dart';
import 'package:ecommer_app/screen/home/topwidget.dart';
import 'package:flutter/material.dart';

import '../../data/mockData.dart';

class MainHomeScreen extends StatelessWidget {
  MainHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                        listproduct: MockData.listProductSale,
                        title: 'SẢN PHẨM GIẢM GIÁ'),
                    ListProductWidget(
                        listproduct: MockData.listProductNew,
                        title: 'SẢN PHẨM MỚI NHẤT'),
                    ListProductCategoryWidget(listProduct: MockData.listProduct),
                    ListProductWidget(
                        listproduct: MockData.listProduct,
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
