import 'package:ecommer_app/data/mockData.dart';
import 'package:flutter/material.dart';

class OrderManagementView extends StatefulWidget {
  const OrderManagementView({super.key});

  @override
  State<OrderManagementView> createState() => _OrderManagementViewState();
}

class _OrderManagementViewState extends State<OrderManagementView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          title: const Text(
            "Quản lý đơn hàng",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              child: TabBar(
                isScrollable: true,
                controller: _controller,
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: "Đơn mới"),
                  Tab(text: "Đã xác nhận"),
                  Tab(text: "Đang giao"),
                  Tab(text: "Đã xác nhận"),
                  Tab(text: "Đã xác nhận"),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _controller,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: MockData.ordersToPay.map(
                        (order) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 14),
                            padding: const EdgeInsets.symmetric(
                                vertical: 18.0, horizontal: 14),
                            decoration: const BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Mã đơn hàng ${order.code}",
                                    ),
                                    const ColoredBox(
                                      color: Colors.green,
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text(
                                          'Đơn mới',
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 14),
                                  child: Column(
                                      children: order.orderDetails.map(
                                    (detail) {
                                      final color = detail.color;
                                      final hex = int.parse("0xFF$color");
                                      return Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            LimitedBox(
                                              maxHeight: 55,
                                              maxWidth: 55,
                                              child: Image.asset(
                                                detail.products.path,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 14),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(detail.products.name),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 5.0),
                                                    child: Text(
                                                      "${detail.products.price} VNĐ",
                                                      style: const TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        "size: ${detail.size}, ",
                                                        style: const TextStyle(
                                                          fontSize: 10.0,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(hex),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "x${detail.quantity}",
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ).toList()),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text('Tổng: ${order.total} VNĐ'),
                                ),
                                const SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Huỷ đơn'),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                Text("Đã xác nhận"),
                Text('Đang giao'),
                Text('Hoàn thành'),
                Text('Hoàn thành'),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
