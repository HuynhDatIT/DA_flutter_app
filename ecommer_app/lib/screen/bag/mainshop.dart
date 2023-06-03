import 'package:ecommer_app/data/shopdata.dart';
import 'package:ecommer_app/screen/bag/testshop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screenbag.dart';
import 'notification.dart';


class Shopbag extends StatelessWidget {
  const Shopbag({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        home: HomePage()
      ),
      
      
       
      
    );
  }
}