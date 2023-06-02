import 'package:flutter/material.dart';
import 'dart:async';

class TB extends StatefulWidget {
  TB ({ super.key});
  @override 
  State<TB> createState() => _TB();
}

class _TB extends State<TB>{
  @override 
  Widget build(BuildContext context){
    Future.delayed(Duration.zero,() => TBGHT(context));
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/7,
            // decoration: BoxDecoration(
            //   color: Colors.black,
            // ),
            
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Nut QuayLai
                Container(
                  width: MediaQuery.of(context).size.width/3,
            height: MediaQuery.of(context).size.height,
            
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)
                      
                
                    ),
                    onPressed: (){}, child: Text('Quay Lại')),
                ),
                //Nut Trang Chu
                Container(
                  width: MediaQuery.of(context).size.width/3,
            height: MediaQuery.of(context).size.height,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),              
                    ),
                    onPressed: (){}, child: Text('Trang Chủ')),
                ),
              ],),
                ),
             
          

          Container(
            height: MediaQuery.of(context).size.height/1.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Giỏ hàng trống',style: TextStyle(
                  fontSize: 25,
                ),)
              ],
            ),
          ),


          Container(
            height: MediaQuery.of(context).size.height/5.2,
            child: Row(
              children: [
                //Hien Thi $
                Container(
                  width: MediaQuery.of(context).size.width/1.7,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    border:Border(top: BorderSide(
                      color: Colors.black,
                      width: 0.5,
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Tổng Tiền:'),
                      Text('0'),
                    ],
                  ),
                  
                ),
                //Nut Thanh toan
                Container(
                  width: MediaQuery.of(context).size.width/2.43,
                  height: MediaQuery.of(context).size.height,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),              
                    ),
                    onPressed: (){}, child: Text('Đặt Hàng')),
                ),

              ],
            )
            
          ),
        ],
      ),

      
    );
    }
  }


     
   void TBGHT (BuildContext context){
    showDialog(context: context,
     builder: (context){
                        return AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                          ),
                          title: Text('Giỏ hàng của bạn\n' 'hiện đang trống hãy tiếp tục mua sắm',style: TextStyle(
                            fontSize: 25,
                          ),textAlign: TextAlign.center,maxLines: 2,),
                          actions: [
                            // TextButton(onPressed: (){Navigator.pop(context);
                            // }, child: Text('Quay lai')),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 25, 5, 5),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height/3,
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                     width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.height/10,
                                   
                                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      primary: Colors.red,
                
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Xác Nhận',style: TextStyle(fontSize: 25),)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },);
   }
  