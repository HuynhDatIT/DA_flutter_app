import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommer_app/model/productDto.dart';

class Firebasedata {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static CollectionReference product =
      FirebaseFirestore.instance.collection('products');

  static Future<void> addProductSale() {
    return product
        .add({
          'path': 'assets/images/product1.jpg',
          'name': 'Váy chữ A công sở',
          'categoryName': 'Quần',
          'categoryId': '1', //1-quan 2-ao 3-giay
          'price': 59000,
          'priceDiscount': 100000,
          'type': 3 //1-sale 3-new 2-none
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  static Future<void> addProductNew() {
    return product
        .add({
          'path': 'assets/images/product1.jpg',
          'name': 'Váy chữ A công sở',
          'categoryName': 'Quần',
          'categoryId': '1',
          'price': 59000,
          'priceDiscount': 100000,
          'type': 1
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  static Future<void> addProduct() {
    return product
        .add({
          'path': 'assets/images/product1.jpg',
          'name': 'Váy chữ A công sở',
          'categoryName': 'Quần',
          'categoryId': '1',
          'price': 59000,
          'priceDiscount': 100000,
          'type': 2
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  static Future<List<ProductDto>> getProducts(int? type) async {
    List<ProductDto> listProduct = [];

    await FirebaseFirestore.instance
        .collection('products')
        .where('type', isEqualTo: type ?? 2)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        final product = ProductDto.fromJson(doc.data() as Map<String, dynamic>);
        product.id = doc.id;
        listProduct.add(product);
      });
    });
    print(listProduct.length);
    return listProduct;
  }
}
