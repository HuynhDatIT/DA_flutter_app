import 'package:ecommer_app/common/productItemWidget.dart';
import 'package:ecommer_app/data/mockData.dart';
import 'package:ecommer_app/data/shopdata.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:ecommer_app/screen/detail/productScreen.dart';
import 'package:ecommer_app/screen/detail/productWidget.dart';
import 'package:ecommer_app/screen/home/listProductWidget.dart';
import 'package:ecommer_app/screen/home/mainHomeScreen.dart';
import 'package:ecommer_app/screen/login/login_view.dart';
import 'package:ecommer_app/screen/order_management/order_management_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ecommer_app/screen/admin/mainAdmin.dart';

import 'package:ecommer_app/screen/bag/mainbag.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
    return const LoginView();
  }
}
