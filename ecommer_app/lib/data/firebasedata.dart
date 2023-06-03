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
          'categoryId': '2',
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
          'categoryId': '2',
          'price': 59000,
          'priceDiscount': 100000,
          'type': 2
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  static Future<List<ProductDto>> getProducts(
      int? type, int? categoryId) async {
    List<ProductDto> listProduct = new List<ProductDto>.filled(
        0,
        ProductDto(
            path: '',
            name: '',
            category: '',
            price: 0,
            priceDiscount: 0,
            type: 0,
            id: ''),
        growable: true);

    Query<Map<String, dynamic>> query =
        FirebaseFirestore.instance.collection('products');

    if (type != null) {
      query = FirebaseFirestore.instance
          .collection('products')
          .where('type', isEqualTo: type);
    }

    if (categoryId != null) {
      query = FirebaseFirestore.instance
          .collection('products')
          .where('categoryId', isEqualTo: categoryId.toString());
    }

    await query.get().then((QuerySnapshot querySnapshot) {
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
