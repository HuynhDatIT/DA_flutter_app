import 'package:ecommer_app/common/bottom.dart';

import 'product.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:ecommer_app/screen/home/listProductWidget.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          Padding(
              padding: EdgeInsets.all(0),
              child: TextButton(
                child: Column(
                  children: [
                    Image.asset('assets/image_product/loc.png'),
                    Text(
                      'Lọc',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              )),
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
          children: [],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 5, 50),
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
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
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
                            Product(
                                product_widget: ProductDto(
                                    'assets/images/product1.jpg',
                                    'vay chu a cong so',
                                    'quan',
                                    50000,
                                    100000,
                                    1)),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Row(
              //trang
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Row(
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
              ],
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
