import 'package:flutter/material.dart';

class SP extends StatefulWidget {
  SP ({ super.key});
  @override 
  State<SP> createState() => _SP();
}

class _SP extends State<SP>{
  bool isChecked = false;
  int num = 1;
  @override 
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/6.5,
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
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                          ),
                          title: Text('Bạn có muốn xóa\n' 'sản phẩm khỏi giỏ đồ ?',style: TextStyle(
                            fontSize: 25,
                          ),textAlign: TextAlign.center,maxLines: 2,),
                          actions: [
                            // TextButton(onPressed: (){Navigator.pop(context);
                            // }, child: Text('Quay lai')),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 30, 5, 5),
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
                                    // decoration: BoxDecoration(
                                    //   color: Color.fromRGBO(219, 48, 34, 100)),
                                    
                                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                       primary: Color.fromRGBO(219, 48, 34, 100),
                
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Hủy',style: TextStyle(fontSize: 25),)),
                                  ),
                                  Container(
                                     width: MediaQuery.of(context).size.width/3,
                                    height: MediaQuery.of(context).size.height/10,
                                   
                                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      primary: Color.fromRGBO(219, 48, 34, 100),
                
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
                    }, 
                    icon: Icon(Icons.close,size: 28,),
                    ),               
              ],
            ),
          ),
          
          //CtnSP
          Container(           
            height: MediaQuery.of(context).size.height/10.4,
            decoration: BoxDecoration(
              // color: Colors.blue,
            ),
            child: Row(
              children: [
                //Hinh
          Container(
            padding: EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width/4,
            height: MediaQuery.of(context).size.height/10.6,
            decoration: BoxDecoration(
              
              // color: Colors.yellow,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                  child: 
                  Image(image: NetworkImage('https://product.hstatic.net/200000525243/product/image_xanh-duong-nhat_5_ao-so-mi-basic-nam-tay-dai-n-m-1902029_13c09a0c35b04eb5845844d90b11585c_master.jpg'),
                  height:(MediaQuery.of(context).size.height/10),
                  width:(MediaQuery.of(context).size.width/4.5) ,
                  fit: BoxFit.cover,)),
              ],
            ),
          ),

          //Thongtin
          Container(
            width: MediaQuery.of(context).size.width/8,
            height: MediaQuery.of(context).size.height/10.6,
            decoration: BoxDecoration(
              // color: Colors.red,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(2),
                child: Text('Tên:'),),
                Padding(padding: EdgeInsets.all(2),
                child: Text('Size:'),),
                Padding(padding: EdgeInsets.all(2),
                child: Text('Màu:'),),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width/4.5,
            height: MediaQuery.of(context).size.height/10.6,
            decoration: BoxDecoration(
              // color: Colors.pink,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(2),
                child: Text('Áo sơ mi tay dài'),),
                Padding(padding: EdgeInsets.all(2),
                child: Text('XXL'),),
                Padding(padding: EdgeInsets.all(2),
                child: Text('Xanh da trời'),),
              ],
            ),
          ),

          //Giatien
          Container(
            width: MediaQuery.of(context).size.width/7.7,
            height: MediaQuery.of(context).size.height/10.6,
            decoration: BoxDecoration(
              // color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('100000',style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),),
                Text('120000',style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  
                ),),
              ],
            ),
          ),

          //Nuttanggiam
          Container(
              width: MediaQuery.of(context).size.width/3.7,
            height: MediaQuery.of(context).size.height/10.6,
            decoration: BoxDecoration(
              // color: Colors.orange,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.black
                     ),
                     icon: Icon(Icons.add,size: 20),
                     label: Text(''),
                  onPressed: (){num++;
                  setState(() {
              
             });
                  }, 
                ),

                Text(num.toString(),
                style: TextStyle(fontSize: 20),),

                Container(
                  child: num==1?
                    TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                     ),
                     icon: Icon(Icons.remove,size: 20),
                     label: Text(''),
                  onPressed: (){null;
                  // setState(() {
                  //           })
              }, 
                ):

                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.black
                     ),
                     icon: Icon(Icons.remove,size: 20),
                     label: Text(''),
                  onPressed: (){
                    num--;
                    setState(() {
                            })
            ;}, 
                )
                ),
                  
              

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