import 'package:ecommer_app/screen/edit_profile/edit_profile_view.dart';
import 'package:ecommer_app/screen/home/mainHomeScreen.dart';
import 'package:ecommer_app/screen/login/login_view.dart';
import 'package:ecommer_app/screen/order_detail/order_detail_view.dart';
import 'package:ecommer_app/screen/register/register_view.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
    return const LoginView();
  }
}
