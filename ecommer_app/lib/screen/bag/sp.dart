import 'package:flutter/material.dart';

import '../../model/cart.dart';

class SP extends StatefulWidget {
  Cart cart;
  SP({super.key, required this.cart});
  @override
  State<SP> createState() => _SP();
}

class _SP extends State<SP> {
  bool isChecked = false;
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  shape: CircleBorder(),
                  splashRadius: 8,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          title: Text(
                            'Bạn có muốn xóa\n' 'sản phẩm khỏi giỏ đồ ?',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                          actions: [
                            // TextButton(onPressed: (){Navigator.pop(context);
                            // }, child: Text('Quay lai')),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 30, 5, 5),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 3,
                              decoration: BoxDecoration(
                                  // color: Colors.amber,
                                  ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    // decoration: BoxDecoration(
                                    //   color: Color.fromRGBO(219, 48, 34, 100)),

                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          primary: Colors.red,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Hủy',
                                          style: TextStyle(fontSize: 25),
                                        )),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          primary: Colors.red,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Xác Nhận',
                                          style: TextStyle(fontSize: 25),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
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
                          child: Image(
                            image: NetworkImage(widget.cart.productImage ?? ''),
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
                  height: MediaQuery.of(context).size.height / 7,
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
                  width: MediaQuery.of(context).size.width / 4.5,
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
                        child: Text(widget.cart.productName ?? ''),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(widget.cart.productType ?? ''),
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
                      Text(
                        widget.cart.productDiscountPrice.toString(),
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.cart.productPrice.toString(),
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
                          num++;
                          setState(() {});
                        },
                      ),
                      Text(
                        widget.cart.quantity.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                          child: num == 1
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
                                    num--;
                                    setState(() {});
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
    );
  }
}
