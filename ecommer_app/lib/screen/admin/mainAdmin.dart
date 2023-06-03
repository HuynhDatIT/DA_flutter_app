import 'package:ecommer_app/common/bottom.dart';
import 'package:ecommer_app/screen/admin/filter_admin.dart';
import 'package:flutter/material.dart';

class MainAdmin extends StatefulWidget {
  const MainAdmin({Key? key}) : super(key: key);

  @override
  _MainAdminState createState() => _MainAdminState();
}

class _MainAdminState extends State<MainAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          height: 1, fontSize: 34, color: Colors.black)),
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
                      height: 1),
                ),
              ],
            ),
            Expanded(child: Filteradmin()),
            BottomCustom(),
          ],
        ),
      ),
    );
  }
}
