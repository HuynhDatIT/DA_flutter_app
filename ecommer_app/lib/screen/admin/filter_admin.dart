import 'package:flutter/material.dart';

class Product {
  String id;
  String priceOder;
  String nameOder;
  int Number;
  bool isConfirmed;
  bool isCanceled;
  int confirmationCount;
  int cancellationCount;

  Product(this.id, this.priceOder,this.Number, this.nameOder, this.isConfirmed,
      this.isCanceled, this.confirmationCount, this.cancellationCount);
}

class Filteradmin extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<Filteradmin> {
  List<Product> products = [
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
    Product('0T001', '49000', 3,'Tấn Nghĩa', false, false, 0, 0),
  ];

  List<Product> filteredProducts = [];
  String filter = 'Tất cả'; // all, confirmed, canceled, notSelected

  @override
  void initState() {
    super.initState();
    filterProducts();
  }

  void filterProducts() {
    filteredProducts.clear();

    if (filter == 'Tất cả') {
      filteredProducts.addAll(products);
    } else if (filter == 'Đơn đã xác nhận') {
      filteredProducts.addAll(products.where((product) => product.isConfirmed));
    } else if (filter == 'Đơn đã huỷ') {
      filteredProducts.addAll(products.where((product) => product.isCanceled));
    } else if (filter == 'chưa xử lý') {
      filteredProducts.addAll(products.where((product) =>
          product.confirmationCount == 0 && product.cancellationCount == 0));
    }
  }

  void toggleConfirmation(int index) {
    setState(() {
      final product = filteredProducts[index];
      if (!product.isConfirmed) {
        product.isConfirmed = true;
        product.confirmationCount++;
      } else {
        product.isConfirmed = false;
        product.confirmationCount--;
      }
      filterProducts();
    });
  }

  void toggleCancellation(int index) {
    setState(() {
      final product = filteredProducts[index];
      if (!product.isCanceled) {
        product.isCanceled = true;
        product.cancellationCount++;
      } else {
        product.isCanceled = false;
        product.cancellationCount--;
      }
      filterProducts();
    });
  }

  void showConfirmationDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text('bạn có muốn xác nhận đơn hàng này không?'),
          actions: [
            TextButton(
              onPressed: () {
                toggleConfirmation(index);
                Navigator.of(context).pop();
              },
              child: Text('xác nhận'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green, foregroundColor: Colors.white),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Huỷ'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
            ),
          ],
        );
      },
    );
  }

  void showCancellationDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text('Báo có muốn huỷ đơn hàng này không?'),
          actions: [
            TextButton(
              onPressed: () {
                toggleCancellation(index);
                Navigator.of(context).pop();
              },
              child: Text('xác nhận'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green, foregroundColor: Colors.white),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('huỷ'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: filter,
          onChanged: (value) {
            setState(() {
              filter = value!;
              filterProducts();
            });
          },
          items: [
            DropdownMenuItem(
              value: 'Tất cả',
              child: Text('Tất cả'),
            ),
            DropdownMenuItem(
              value: 'Đơn đã xác nhận',
              child: Text('Đơn đã xác nhận'),
            ),
            DropdownMenuItem(
              value: 'Đơn đã huỷ',
              child: Text('Đơn đã huỷ'),
            ),
            DropdownMenuItem(
              value: 'chưa xử lý',
              child: Text('chưa xử lý'),
            ),
          ],
        ),
        Flexible(
          child: Container(
            padding: const EdgeInsets.only(bottom: 8, top: 8),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.red),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Đơn Hàng',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    // textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text(
                    'Trạng Thái',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 350,
          child: Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];

                return ListTile(
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'ID: ${product.id}',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(text: '\n'),
                      TextSpan(
                          text: 'Giá: ${product.priceOder}',
                          style: TextStyle(color: Colors.black)),
                      WidgetSpan(child: SizedBox(width: 10,)),
                      TextSpan(
                        text: 'Sl:${product.Number}',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(text: '\n'),
                      TextSpan(
                          text: 'Người đặt:${product.nameOder}',
                          style: TextStyle(color: Colors.black))
                    ]),
                  ),
                  subtitle: Row(
                    children: [
                      Visibility(
                        visible: product.isConfirmed,
                        child: Text(
                          'Đã xác nhận',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 8),
                      Visibility(
                          visible: product.isCanceled,
                          child: Text(
                            'Đã huỷ',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: product.isConfirmed
                            ? null
                            : () => showConfirmationDialog(context, index),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.green.withOpacity(1);
                              } else if (states
                                  .contains(MaterialState.disabled)) {
                                return Colors.green.withOpacity(1);
                              }
                              return product.isConfirmed ? Colors.green : null;
                            },
                          ),
                        ),
                        child: Text(
                          'Xác nhận',
                          style: TextStyle(
                            color: product.isConfirmed ? Colors.white : null,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: product.isCanceled
                            ? null
                            : () => showCancellationDialog(context, index),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.red.withOpacity(1);
                              } else if (states
                                  .contains(MaterialState.disabled)) {
                                return Colors.red.withOpacity(1);
                              }
                              return product.isCanceled ? Colors.red : null;
                            },
                          ),
                        ),
                        child: Text(
                          'Huỷ',
                          style: TextStyle(
                            color: product.isCanceled ? Colors.white : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
