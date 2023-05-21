import 'package:flutter/material.dart';
import 'screenbag.dart';
import 'notification.dart';


class MainBag extends StatelessWidget {
  const MainBag({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      ),
      
      body: Container(
        child: ListView(
          children: [
            Giohang()
          ],
        )
      )
      
    );
  }
}