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
                Column(
                  children: [
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                    Text("1"),
                  ],
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
