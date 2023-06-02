import 'package:ecommer_app/common/productItemWidget.dart';
import 'package:ecommer_app/data/mockData.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:ecommer_app/product/productWidget.dart';
import 'package:ecommer_app/screen/home/listProductWidget.dart';
import 'package:ecommer_app/product/productScreen.dart';
import 'package:ecommer_app/screen/home/mainHomeScreen.dart';
import 'package:ecommer_app/screen/login/login_view.dart';
import 'package:ecommer_app/screen/order_management/order_management_view.dart';
import 'package:flutter/material.dart';
import 'package:ecommer_app/screen/admin/mainAdmin.dart';

import 'package:ecommer_app/screen/bag/mainbag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const OrderManagementView();
  }
}
