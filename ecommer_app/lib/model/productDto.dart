class ProductDto {
  String? id;
  String? path;
  String? name;
  String? category;
  String? categoryId; //1-quan 2-a0 - Giay
  int? price;
  int? priceDiscount;
  int? type; // 1- new 2-sale 3-none

  ProductDto(
      {this.path,
      this.name,
      this.category,
      this.price,
      this.priceDiscount,
      this.type,
      this.id});

  ProductDto.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    name = json['name'];
    category = json['categoryName'];
    categoryId = json['categoryId'];
    price = json['price'];
    priceDiscount = json['priceDiscount'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['name'] = this.name;
    data['categoryName'] = this.category;
    data['categoryId'] = this.categoryId;
    data['price'] = this.price;
    data['priceDiscount'] = this.priceDiscount;
    data['type'] = this.type;
    return data;
  }
}
