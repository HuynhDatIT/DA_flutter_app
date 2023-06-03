// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommer_app/model/productDto.dart';

class OrderDetailsDTO {
  final int orderId;
  final int quantity;
  final String color;
  final String size;
  final ProductDto products;
  
  OrderDetailsDTO({
    required this.orderId,
    required this.quantity,
    required this.color,
    required this.size,
    required this.products,
  });
}
