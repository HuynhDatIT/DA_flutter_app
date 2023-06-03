class Comment {
  String? id;
  String? content;
  String? acountId;
  String? acountName;
  String? acountImage;
  String? productId;

  Comment(
      {this.content,
      this.acountId,
      this.acountName,
      this.acountImage,
      this.id,
      this.productId});

  Comment.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    acountId = json['acountId'];
    acountName = json['acountName'];
    acountImage = json['acountImage'];
    id = json['id'];
    productId = json['productId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['acountId'] = this.acountId;
    data['acountName'] = this.acountName;
    data['acountImage'] = this.acountImage;
    data['id'] = this.id;
    data['productId'] = this.productId;
    return data;
  }
}
