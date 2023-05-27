import 'package:flutter/material.dart';

class MainAdmin extends StatefulWidget {
  const MainAdmin({Key? key}) : super(key: key);

  @override
  _MainAdminState createState() => _MainAdminState();
}

class _MainAdminState extends State<MainAdmin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Adminitrator',
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(height: 2, fontSize: 44, color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 20, 20, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/product1.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Text('Tánh Trần ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        height: 2, fontSize: 34, color: Colors.black)),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Xử lý đơn hàng',
                style: TextStyle(
                    // fontFamily: 'Readex Pro',
                    fontSize: 44,
                    height: 2),
              ),
            ],
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.red),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      'Mã ĐH',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    'Trạng Thái',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    '',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text(
                      'DH001',
                      style: TextStyle(
                        fontSize: 20,
                        // fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'xac nhận',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        onPressed: () => {},
                      ),
                      TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Huỷ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        onPressed: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Thông báo'),
                                  content: const Text(
                                      'Bạn có muốn huỷ đơn hàng này không'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Xác nhận'),
                                      child: const Text('Xác Nhận'),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          foregroundColor: Colors.white),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Huỷ'),
                                      child: const Text('Huỷ'),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          foregroundColor: Colors.white),
                                    )
                                  ],
                                )),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
