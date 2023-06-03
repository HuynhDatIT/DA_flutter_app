import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommer_app/model/productDto.dart';

class Firebasedata {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static CollectionReference product =
      FirebaseFirestore.instance.collection('products');

  static CollectionReference cart =
      FirebaseFirestore.instance.collection('carts');

  static Future<void> addProductSale() {
    return product
        .add({
          'path':
              'https://product.hstatic.net/1000133495/product/ant04810_f7f6f3a4b0c64943a1b3289c2f09190f_master.jpg',
          'name': ' Quần Jean Nam',
          'categoryName': 'Quần',
          'categoryId': '1', //1-quan 2-ao 3-giay
          'price': 49000,
          'priceDiscount': 99000,
          'type': 3 //1-sale 3-new 2-none
        })
        .then((value) => print("product Added"))
        .catchError((error) => print("Failed to add product: $error"));
  }

  static Future<void> addProductNew() {
    return product
        .add({
          'path':
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKuVuOwupcaIdXE8ScIC5cGsLB0WSgsJSfm49WSGfkUl5knvzu1e5bi-j1r-tjG-hWcLc&usqp=CAU',
          'name': 'Áo Nữ công sở',
          'categoryName': 'Áo',
          'categoryId': '2', //1-quan 2-ao 3-giay
          'price': 59000,
          'priceDiscount': 100000,
          'type': 1 //1-sale 3-new 2-none
        })
        .then((value) => print("product Added"))
        .catchError((error) => print("Failed to add product: $error"));
  }

  static Future<void> addProduct() {
    return product
        .add({
          'path':
              'https://product.hstatic.net/200000525243/product/age-xanh-duong-nhat-6-quan-jean-nam-repreve-form-slim-ninomaxx-2203060_008aaa4e53cf43319d43bc3818a9651f_large.jpg',
          'name': ' Quần Jean Nam',
          'categoryName': 'Quần',
          'categoryId': '1', //1-quan 2-ao 3-giay
          'price': 49000,
          'priceDiscount': 99000,
          'type': 3 //1-sale 3-new 2-none
        })
        .then((value) => print("product Added"))
        .catchError((error) => print("Failed to add product: $error"));
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
        product.id = doc.id.toString();
        listProduct.add(product);
      });
    });
    //print('-- ${listProduct[0].id}');
    return listProduct;
  }

  static Future<void> addCart(
      ProductDto productDto, String accountId, int quantity) {
    print(productDto.id.toString());
    return cart
        .add({
          'quantity': quantity,
          'productId': productDto.id.toString(),
          'accountId': accountId,
          'productName': productDto.name,
          'productPrice': productDto.price,
          'productDiscountPrice': productDto.priceDiscount,
          'productType': productDto.category,
          'productImage': productDto.path
        })
        .then((value) => print("cart Added"))
        .catchError((error) => print("Failed to add cart: $error"));
  }
 
 
}
