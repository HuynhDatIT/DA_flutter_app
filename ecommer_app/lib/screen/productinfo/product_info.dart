import 'package:ecommer_app/common/addbutton.dart';
import 'package:ecommer_app/common/bottom.dart';
import 'package:ecommer_app/model/productDto.dart';
import 'package:flutter/material.dart';

import '../../common/productItemWidget.dart';

class ProductInfo extends StatefulWidget {
  ProductDto productDto;
  ProductInfo({super.key, required this.productDto});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: true,
        title: const Text('Thông tin sản phẩm',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Image.network(
            widget.productDto.path ?? '',
            width: double.infinity,
            height: 325,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Row(children: [
            SizedBox(width: 10),
            Text(
              widget.productDto.name ?? '',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
        SizedBox(height: 2),
        Container(
          child: Row(children: [
            SizedBox(width: 10),
            Text(
              widget.productDto.category ?? '',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
        SizedBox(height: 5),
        Container(
          child: Row(children: [
            SizedBox(width: 10),
            Text("Gía:  ",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                )),
            SizedBox(width: 20),
            Text(widget.productDto.priceDiscount.toString(),
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  decoration: TextDecoration.lineThrough,
                  fontSize: 14,
                )),
            SizedBox(width: 20),
            Text(widget.productDto.price.toString(),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
          ]),
        ),
        SizedBox(height: 10),
        Container(
          child: const Text(
            '   Thông tin bổ sung',
            style: TextStyle(
              fontFamily: 'Rufina',
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          child: Row(
            children: [
              SizedBox(width: 50),
              Text('Loại sản phẩm:',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                    fontFamily: 'Rufina',
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(width: 40),
              Text(
                widget.productDto.category ?? '',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontFamily: 'Rufina',
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          child: Row(
            children: [
              SizedBox(width: 50),
              Text('Gía: ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                    fontFamily: 'Rufina',
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(width: 110),
              Text(
                widget.productDto.priceDiscount.toString(),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontFamily: 'Rufina',
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          child: Row(
            children: [
              SizedBox(width: 50),
              Text('Gía khuyến mãi: ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                    fontFamily: 'Rufina',
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(width: 28),
              Text(
                widget.productDto.price.toString(),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontFamily: 'Rufina',
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          child: Row(
            children: [
              SizedBox(width: 50),
              Text('Tên sản phẩm:',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                    fontFamily: 'Rufina',
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(width: 40),
              Text(
                widget.productDto.name ?? '',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontFamily: 'Rufina',
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 25),
        Container(
          margin: const EdgeInsets.only(left: 35.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              child: const Text(
                'Thêm vào giỏ hàng',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                minimumSize: MaterialStateProperty.all<Size>(Size(325, 50)),
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                  return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15));
                }),
              ),
            )
          ]),
        ),
        SizedBox(height: 10),
        Container(
          child: const Text(
            '   Các sản phẩm gợi ý',
            style: TextStyle(
              fontFamily: 'Rufina',
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 5),
        GridView.count(
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: 0.68,
          crossAxisCount: 2,
          shrinkWrap: true,
          children: [
            for (int i = 1; i < 5; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                decoration: const BoxDecoration(
                  color: const Color.fromARGB(255, 167, 164, 153),
                  //borderRadius: BorderRadius.circular(15),
                ),
                child: Column(children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        child: Image.network(
                      'https://capvirgo.com/wp-content/uploads/2022/06/wsxc1656255139011_0-600x450.jpg?v=1656231542',
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Giay sneaker',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: 'Rufina',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Giay',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontFamily: 'Rufina',
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '100.000',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14,
                            fontFamily: 'Rufina',
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart,
                        ),
                        Text(
                          '50.000',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontFamily: 'Rufina',
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
          ],
        ),
        Container(
          child: const Text(
            '   Comment',
            style: TextStyle(
                fontFamily: 'Rufina',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.only(left: 35.0),
          child: Row(
            children: [
              CircleAvatar(
                  maxRadius: 16,
                  child: Image.network(
                      'https://capvirgo.com/wp-content/uploads/2022/06/wsxc1656255139011_0-600x450.jpg?v=1656231542')),
              SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 229, 229),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Van Huy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'good good good good good good',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                            overflow: TextOverflow.visible,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          margin: EdgeInsets.only(left: 35.0),
          child: Row(
            children: [
              CircleAvatar(
                  maxRadius: 16,
                  child: Image.network(
                      'https://capvirgo.com/wp-content/uploads/2022/06/wsxc1656255139011_0-600x450.jpg?v=1656231542')),
              SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 229, 229),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Van Huy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'good good good good good good ',
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          //trang
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Trang:',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                  SizedBox(width: 5),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                  SizedBox(width: 5),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      )),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Row(children: [
              CircleAvatar(
                  maxRadius: 16,
                  child: Image.network(
                      'https://capvirgo.com/wp-content/uploads/2022/06/wsxc1656255139011_0-600x450.jpg?v=1656231542')),
              SizedBox(
                width: 5,
              ),
              const SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ' Nhập bình luận',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                    ),
                    minLines: 1,
                    maxLines: 3,
                  )),
              SizedBox(width: 15),
              ElevatedButton(
                child: const Text(
                  'gửi',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  minimumSize: MaterialStateProperty.all<Size>(Size(35, 45)),
                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                    return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15));
                  }),
                ),
              )
            ])),
        BottomCustom()
      ])),
    );
  }
}
