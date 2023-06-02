
import 'package:ecommer_app/data/shopdata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class CartPage extends StatefulWidget {
  CartPage({super.key});
    @override
  State<CartPage> createState() => _CartPage();
}
  
class _CartPage extends State<CartPage>{
  bool isChecked = true;
  
  
 
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Container(
        child:
      Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(padding: EdgeInsets.all(1),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                   children: [
                    Text('Giỏ Hàng',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                   ],
              )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                badges.Badge(
                  badgeContent: Text('${value.Xuatslgh()}',style: TextStyle(
                    color: Colors.white,
                  ),),
                  child: Icon(Icons.shopping_cart),
                  badgeAnimation: badges.BadgeAnimation.fade(),
                  position: badges.BadgePosition.topEnd(),
                ),

              ],
            ),
          )
                ],
              ),
              ),
              
              // list view of cart
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ListView.builder(
                    itemCount: value.cartItems.length,
                    padding: EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(2),
                        child: 
                        Container(
      margin: EdgeInsets.only(top: 5),
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height/5,
      decoration: BoxDecoration(
          // color: Colors.blue,
          ),
      child: Column(
        children: [
          //Checkbutton X
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Checkbox(
                //   checkColor: Colors.white,
                //   value: isChecked,
                //   shape: CircleBorder(),
                //   splashRadius: 8,
                //   onChanged: (bool? value) {
                //     setState(() {
                //       isChecked = value!;
                //     });
                //   },
                // ),
                IconButton(
                  onPressed: () { Provider.of<CartModel>(context, listen: false)
                              .Xoa(index);
                              Provider.of<CartModel>(context, listen: false)
                              .Giamslgh(index);
                              
                              },
                              
                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(50),
                    //       ),
                    //       title: Text(
                    //         'Bạn có muốn xóa\n' 'sản phẩm khỏi giỏ đồ ?',
                    //         style: TextStyle(
                    //           fontSize: 25,
                    //         ),
                    //         textAlign: TextAlign.center,
                    //         maxLines: 2,
                    //       ),
                    //       actions: [
                    //         // TextButton(onPressed: (){Navigator.pop(context);
                    //         // }, child: Text('Quay lai')),
                    //         Container(
                    //           margin: EdgeInsets.fromLTRB(5, 30, 5, 5),
                    //           width: MediaQuery.of(context).size.width,
                    //           height: MediaQuery.of(context).size.height / 3,
                    //           decoration: BoxDecoration(
                    //               // color: Colors.amber,
                    //               ),
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceAround,
                    //             children: [
                    //               Container(
                    //                 width:
                    //                     MediaQuery.of(context).size.width / 3,
                    //                 height:
                    //                     MediaQuery.of(context).size.height / 10,
                    //                 // decoration: BoxDecoration(
                    //                 //   color: Color.fromRGBO(219, 48, 34, 100)),

                    //                 child: ElevatedButton(
                    //                     style: ElevatedButton.styleFrom(
                    //                       shape: RoundedRectangleBorder(
                    //                           borderRadius:
                    //                               BorderRadius.circular(30)),
                    //                       primary: Colors.red,
                    //                     ),
                    //                     onPressed: () {
                    //                       Navigator.pop(context);
                    //                     },
                    //                     child: Text(
                    //                       'Hủy',
                    //                       style: TextStyle(fontSize: 25),
                    //                     )),
                    //               ),
                    //               Container(
                    //                 width:
                    //                     MediaQuery.of(context).size.width / 3,
                    //                 height:
                    //                     MediaQuery.of(context).size.height / 10,
                    //                 child: ElevatedButton(
                    //                     style: ElevatedButton.styleFrom(
                    //                       shape: RoundedRectangleBorder(
                    //                           borderRadius:
                    //                               BorderRadius.circular(30)),
                    //                       primary: Colors.red,
                    //                     ),
                    //                     onPressed: (){
                    //                       Navigator.pop(context);
                    //                       Provider.of<CartModel>(context, listen: false)
                    //           .Xoa(index);
                                          
                    //                     },
                  
                    //                   child: Text(
                    //                       'Xác Nhận',
                    //                       style: TextStyle(fontSize: 25),
                    //                     )),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // );
                  
                  icon: Icon(
                    Icons.close,
                    size: 28,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          //CtnSP
          Container(
            height: MediaQuery.of(context).size.height / 7,
            decoration: BoxDecoration(
                // color: Colors.yellow,
                ),
            child: Row(
              children: [
                //Hinh
                Container(
                  padding: EdgeInsets.all(2),
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(

                      // color: Colors.green,
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            value.cartItems[index][0],
                            height: (MediaQuery.of(context).size.height / 7),
                            width: (MediaQuery.of(context).size.width / 4.5),
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),

                //Thongtin
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  height: MediaQuery.of(context).size.height /7,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text('Tên:'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text('Loại:'),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.all(2),
                      //   child: Text('Màu:'),
                      // ),
                    ],
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                      // color: Colors.pink,
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(value.cartItems[index][1]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(value.cartItems[index][2]),
                      ),
                      
                    ],
                  ),
                ),

                //Giatien
                Container(
                  width: MediaQuery.of(context).size.width / 7.7,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(''+
                        value.cartItems[index][3],
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(''+
                        value.cartItems[index][4],
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),

                //Nuttanggiam
                Container(
                  width: MediaQuery.of(context).size.width / 3.7,
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                      // color: Colors.orange,
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        style: TextButton.styleFrom(primary: Colors.black),
                        icon: Icon(Icons.add, size: 20),
                        label: Text(''),
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .Tangsl(index);
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CartPage();
            },));
                          Provider.of<CartModel>(context, listen: false)
                              .Tangslgh(index);
                        },
                      ),
                     
                      Text(
                        '${value.Xuatsl()}'
                        //value.cartItems[index][5],
                        // num.toString(),
                        // style: TextStyle(fontSize: 20),
                      ),
                      Container(
                          child: value.Xuatsl() == 1
                              ? TextButton.icon(
                                  style: TextButton.styleFrom(
                                    primary: Colors.grey,
                                  ),
                                  icon: Icon(Icons.remove, size: 20),
                                  label: Text(''),
                                  onPressed: () {
                                    null;
                                    // setState(() {
                                    //           })
                                  },
                                )
                              : TextButton.icon(
                                  style: TextButton.styleFrom(
                                      primary: Colors.black),
                                  icon: Icon(Icons.remove, size: 20),
                                  label: Text(''),
                                  onPressed: () {
                                    Provider.of<CartModel>(context, listen: false)
                              .Giamsl(index);
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CartPage();  
               },));
                                     Provider.of<CartModel>(context, listen: false)
                              .Giamslgh(index);
                                  },
                                )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
                      ),
                      
                      );
                  
                    },
                  ),
                ),
              ),

              // total amount + pay now

              Padding(
                padding: const EdgeInsets.all(1),
                child: 
                Container(
              height: MediaQuery.of(context).size.height / 5.2,
              child: Row(
                children: [
                  //Hien Thi $
                  Container(
                    width: MediaQuery.of(context).size.width / 1.711,
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
                        Text('${value.Tongtien()}'),
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
              )
            ],
          );
        },
      ),
      ),
    );
  }
}
  


