
class Cart {
  String? id;
  int? quantity;
  String? productId;
  String? accountId;
  String? productName;
  double? productPrice;
  double? productDiscountPrice;
  String? productType;
  String? productImage;

  Cart(
      {this.id,
      this.quantity,
      this.productId,
      this.accountId,
      this.productName,
      this.productPrice,
      this.productDiscountPrice,
      this.productType,
      this.productImage});

  Cart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    productId = json['productId'];
    accountId = json['accountId'];
    productName = json['productName'];
    productPrice = json['productPrice'];
    productDiscountPrice = json['productDiscountPrice'];
    productType = json['productType'];
    productImage = json['productImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quantity'] = this.quantity;
    data['productId'] = this.productId;
    data['accountId'] = this.accountId;
    data['productName'] = this.productName;
    data['productPrice'] = this.productPrice;
    data['productDiscountPrice'] = this.productDiscountPrice;
    data['productType'] = this.productType;
    data['productImage'] = this.productImage;
    return data;
  }
}