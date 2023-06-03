// import 'package:ecommer_app/screen/bag/mainbag.dart';
import 'package:ecommer_app/screen/bag/mainbag.dart';
import 'package:ecommer_app/screen/bag/mainshop.dart';
import 'package:ecommer_app/screen/bag/newbag.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommer_app/screen/bag/Manhinhcuahang.dart';
import 'package:ecommer_app/data/shopdata.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: ()
          => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              //Sang man hinh gio hang
              return CartPage();
            },
          ),
        ),
        
      
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),

          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][1],
                      loai: value.shopItems[index][2],
                      giadagiam: value.shopItems[index][3],
                      giachuagiam: value.shopItems[index][4],
                      imagePath: value.shopItems[index][0],
                      sl: value.shopItems[index][5],
                      onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .Them(index);
                              Provider.of<CartModel>(context, listen: false)
                              .Tangslgh(index);
                      }
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}