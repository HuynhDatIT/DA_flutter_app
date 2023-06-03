import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ hinh sp, ten sp, loai, gia da giam , gia chua giam , sl]
    ["assets/images/product1.jpg", "ao so mi ", "ao", "100000", "120000", "1"],
    ["assets/images/product1.jpg", "ao thun ", "ao", "100000", "120000", "1"],
    ["assets/images/product1.jpg", "quan tay", "quan", "100000", "120000", "1"],
    [
      "assets/images/product1.jpg",
      "non luoi trai",
      "non",
      "100000",
      "120000",
      "1"
    ],
  ];
  int _counter = 0;
  int num = 1;
  int slgh = 0;
  int get counter => _counter;
  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // thêm
  void Them(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Xóa sp
  void Xoa(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Tổng tiền
  String Tongtien() {
    double Tongtien = 0;
    for (int i = 0; i < cartItems.length; i++) {
      Tongtien += (double.parse(cartItems[i][3])) * (num);
    }

    return Tongtien.toString();
  }

  //
  void Tangsl(int index) {
    num++;
  }

  void Giamsl(int index) {
    num--;
  }

  String Xuatsl() {
    return num.toString();
  }

  void Tangslgh(int index) {
    slgh++;
  }

  void Giamslgh(int index) {
    slgh--;
  }

  String Xuatslgh() {
    return slgh.toString();
  }
}
