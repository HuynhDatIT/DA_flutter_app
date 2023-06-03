// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'package:ecommer_app/model/account.dart';
import 'package:ecommer_app/screen/admin/mainAdmin.dart';
import 'package:ecommer_app/screen/bag/testshop.dart';
import 'package:ecommer_app/screen/home/mainHomeScreen.dart';
import 'package:ecommer_app/screen/login/login_view.dart';
import 'package:flutter/material.dart';

import 'package:ecommer_app/data/auth_firebase_data.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider({
    required this.authFBData,
  });

  final AuthFirebaseData authFBData;

  String _email = '';

  String _username = '';

  String _password = '';

  void onChangedEmail(value) => _email = value;

  void onChangedUsername(value) => _username = value;

  void onChangedPassword(value) => _password = value;

  void register(BuildContext context) async {
    // print(_username);
    // print(_email);
    // print(_password);
    final Account? account =
        await authFBData.register(_username, _password, _email);

    if (account == null) {
      //
      const snackBar = SnackBar(content: Text('Đăng ký thất bại'));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      const snackBar = SnackBar(content: Text('Đăng ký Thành công'));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginView()),
          (route) => false);
    }
  }

  void login(context) async {
    final String? isLogged = await authFBData.login(_email, _password);

    if (isLogged == null) {
      //show toast message when login error
      const snackBar = SnackBar(content: Text('Đăng nhập thất bại'));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return;
    }

    if (isLogged == 'user') {
      //chuyển hướng home page của user

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainHomeScreen()),
          (route) => false);
    } else {
      //chuyển hướng home page của admin
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainAdmin()),
          (route) => false);
    }
  }
}
