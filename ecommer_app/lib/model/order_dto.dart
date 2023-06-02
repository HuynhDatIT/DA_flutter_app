import 'package:ecommer_app/model/order_detail_dto.dart';

class OrderDTO {
  final int id;
  final String code;
  final String shippingName;
  final String shippingPhoneNumber;
  final String shippingAddress;
  final double total;
  final List<OrderDetailsDTO> orderDetails;
  final int status;
  OrderDTO({
    required this.id,
    required this.code,
    required this.shippingName,
    required this.shippingPhoneNumber,
    required this.shippingAddress,
    required this.total,
    required this.orderDetails,
    required this.status,
  });
}
