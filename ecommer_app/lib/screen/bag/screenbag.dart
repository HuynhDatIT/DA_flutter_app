import 'package:flutter/material.dart';
import 'sp.dart';
import 'notification.dart';

class Giohang extends StatefulWidget {
  Giohang({super.key});
  @override
  State<Giohang> createState() => _Giohang();
}

class _Giohang extends State<Giohang> {
  int sl = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/1.8,
            height: MediaQuery.of(context).size.height/7,
            decoration: BoxDecoration(
              // color: Colors.red,
            ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: 
                  Row(
                    children: [
                      Icon(Icons.shopping_bag,size: 30,),
                      Text(':',style: TextStyle(
                        fontSize: 15,
                      ),),
                      Text('5',style: TextStyle(
                        fontSize: 20),),
                    ],
                  )
                  
                  ),
                  
                  Text('Shop',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  
                  
                ],
              ),
          ),


          Container(
            height: MediaQuery.of(context).size.height/1.7,
            child: ListView(
              children: [
                
                SP(),
                SP(),
                SP(),
                SP(),
                SP(),
               
               
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 5.2,
              child: Row(
                children: [
                  //Hien Thi $
                  Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      )),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Tổng Tiền:'),
                        Text('100000'),
                      ],
                    ),
                  ),
                  //Nut Thanh toan
                  Container(
                    width: MediaQuery.of(context).size.width / 2.43,
                    height: MediaQuery.of(context).size.height,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          primary: Colors.red,
                        ),
                        onPressed: () {

                        },
                        child: Text('Đặt Hàng')),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
