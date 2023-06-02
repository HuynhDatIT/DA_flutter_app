import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Số lượng: 2",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Tổng tiền:   50,000đ",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Đang chuẩn bị",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true, // tự động tạo nút quay lại màn hình
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mã đơn MD011",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15.0),
            LimitedBox(
              maxHeight: 80.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://www.elle.vn/wp-content/uploads/2018/12/04/elle-viet-nam-trang-giay-2018-3.jpg",
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Tên sản phẩm",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "25,000đ",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            LimitedBox(
              maxHeight: 80.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://www.elle.vn/wp-content/uploads/2018/12/04/elle-viet-nam-trang-giay-2018-3.jpg",
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Tên sản phẩm",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "25,000đ",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
