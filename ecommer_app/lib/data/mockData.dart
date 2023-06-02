import 'package:ecommer_app/model/order_detail_dto.dart';
import 'package:ecommer_app/model/order_dto.dart';
import 'package:ecommer_app/screen/order_detail/order_detail_view.dart';

import '../model/imageDto.dart';
import '../model/productDto.dart';

class MockData {
  static List<ImageDto> listImage = [
    new ImageDto(path: 'assets/images/1.jpg'),
    new ImageDto(path: 'assets/images/2.jpg'),
    new ImageDto(path: 'assets/images/3.jpg'),
  ];
  static List<ProductDto> listProductSale = [
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        10000, 3),
  ];

  static List<ProductDto> listProductNew = [
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 1),
  ];
  static List<ProductDto> listProductForYou = [
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
  ];
  static List<ProductDto> listProduct = [
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
    ProductDto(
        'assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000, 0, 2),
  ];
  static List<ProductDto> listProductWidget = [
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
    ProductDto('assets/images/product1.jpg', 'Váy chữ A công sở', 'Quần', 59000,
        0, 10),
  ];

  // Khởi tạo danh sách đơn hàng mới
  static List<OrderDTO> get ordersToPay => [
        OrderDTO(
          id: 1,
          code: "HD001",
          shippingName: "Huỳnh Tấn Nghĩa",
          shippingPhoneNumber: "1234567890",
          shippingAddress: "Quận 6, Tp Hồ Chí Minh",
          total: 200000.0,
          orderDetails: [
            OrderDetailsDTO(
              color: 'dddddd',
              orderId: 1,
              products: ProductDto('assets/images/product1.jpg',
                  'Váy chữ A công sở', 'Quần', 59000, 0, 2),
              quantity: 2,
              size: 'L',
            ),
            OrderDetailsDTO(
              orderId: 1,
              products: ProductDto('assets/images/product1.jpg',
                  'Váy chữ A công sở', 'Quần', 59000, 0, 2),
              color: '000000', // mã hex
              quantity: 1,
              size: 'XL',
            ),
          ],
          status:
              1, // 1 là đơn mới, 2 đơn đã xác nhận, 3 là đơn đang giao, 4 là đơn hoàn thành
        ),
        OrderDTO(
          id: 2,
          code: "HD002",
          shippingName: "Huỳnh Tấn Nghĩa",
          shippingPhoneNumber: "1234567890",
          shippingAddress: "Quận 7, Tp Hồ Chí Minh",
          total: 200000.0,
          orderDetails: [
            OrderDetailsDTO(
              color: 'dddddd',
              orderId: 2,
              products: ProductDto('assets/images/product1.jpg',
                  'Váy chữ A công sở', 'Quần', 59000, 0, 2),
              quantity: 2,
              size: 'L',
            ),
            OrderDetailsDTO(
              orderId: 2,
              products: ProductDto('assets/images/product1.jpg',
                  'Váy chữ A công sở', 'Quần', 59000, 0, 2),
              color: '000000', // mã hex
              quantity: 1,
              size: 'XL',
            ),
          ],
          status:
              3, // 1 là đơn mới, 2 đơn đã xác nhận, 3 là đơn đang giao, 4 là đơn hoàn thành
        ),
      ];

  // Khởi tạo danh sách đơn hàng  đang giao
  static List<OrderDTO> get ordersToShip => [
        OrderDTO(
          id: 2,
          code: "HD002",
          shippingName: "Huỳnh Tấn Nghĩa",
          shippingPhoneNumber: "1234567890",
          shippingAddress: "Quận 7, Tp Hồ Chí Minh",
          total: 200000.0,
          orderDetails: [
            OrderDetailsDTO(
              color: 'dddddd',
              orderId: 2,
              products: ProductDto('assets/images/product1.jpg',
                  'Váy chữ A công sở', 'Quần', 59000, 0, 2),
              quantity: 2,
              size: 'L',
            ),
            OrderDetailsDTO(
              orderId: 2,
              products: ProductDto('assets/images/product1.jpg',
                  'Váy chữ A công sở', 'Quần', 59000, 0, 2),
              color: '000000', // mã hex
              quantity: 1,
              size: 'XL',
            ),
          ],
          status:
              3, // 1 là đơn mới, 2 đơn đã xác nhận, 3 là đơn đang giao, 4 là đơn hoàn thành
        ),
      ];
}
