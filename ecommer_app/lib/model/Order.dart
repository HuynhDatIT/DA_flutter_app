class OrderDto {
  String? id;
  String? orderCode;
  String? status;
  int? total;
  String? accountId;

  OrderDto(
      {this.id, this.orderCode, this.status, this.total, this.accountId});

  OrderDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderCode = json['orderCode'];
    status = json['status'];
    total = json['Total'];
    accountId = json['accountId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['orderCode'] = this.orderCode;
    data['status'] = this.status;
    data['Total'] = this.total;
    data['accountId'] = this.accountId;
    return data;
  }
}