import 'dart:io';

import 'package:ecommer_app/common/bottom.dart';
import 'package:ecommer_app/data/mockData.dart';

import 'product.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:ecommer_app/screen/home/listProductWidget.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  var _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          Builder(
              builder: (context) => IconButton(
                    onPressed: () {
                      _key.currentState!.openEndDrawer();
                    },
                    icon: Column(
                      children: [
                        Image.asset('assets/image_product/loc.png'),
                        Text(
                          'Lọc',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
          Text('Loc'),
        ],
        title: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            prefixIcon: Icon(Icons.search),
            labelText: 'Search product',
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Text(
                    '\n\n\n\nBộ lọc tìm kiếm',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(112, 100, 100, 1),
              ),
            ),
            Row(
              children: [
                Text('\n Theo loại sản phẩm'),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Áo')),
                  ElevatedButton(onPressed: () {}, child: Text('Quần')),
                  ElevatedButton(onPressed: () {}, child: Text('Giày')),
                ],
              ),
            ),
            Row(
              children: [Text('Khoảng giá')],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 80, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 90,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Từ',
                        ),
                      ),
                    ),
                    Text('->'),
                    SizedBox(
                      width: 90,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Đến',
                        ),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 15, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 193, 190, 190),
                      ),
                      child: Text(
                        'Tất cả',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 193, 190, 190),
                      ),
                      child: Text(
                        'Khuyến mãi',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 193, 190, 190),
                      ),
                      child: Text(
                        'mới',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/image_product/xapxep.png',
                            height: 20,
                          ),
                          Text('Giá'),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 80,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 222, 220, 204),
                        ),
                        child: Column(
                          children: [
                            ListProductWidget(
                                listproduct: MockData.listProduct,
                                title: ''),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 20, 5, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trang:',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '6',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                ],
              ),
            ),
            Padding(
                //button shop
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: BottomCustom()),
          ],
        ),
      ),
    );
  }
}
