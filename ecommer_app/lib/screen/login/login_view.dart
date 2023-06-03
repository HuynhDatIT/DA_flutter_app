import 'package:ecommer_app/data/auth_firebase_data.dart';
import 'package:ecommer_app/data/auth_provider.dart';
import 'package:ecommer_app/screen/home/mainHomeScreen.dart';
import 'package:ecommer_app/screen/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // đăng ký AuthProvider
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(authFBData: AuthFirebaseData()),
      child: Scaffold(
        body: Builder(builder: (context) {
          return Center(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.grey.shade100,
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 34.0),
                        const Text(
                          'Đăng nhập',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 50.0),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                          width: double.infinity,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(14)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: const Offset(0, 1),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Expanded(
                                child: TextFormField(
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  onChanged: (value) => context
                                      .read<AuthProvider>()
                                      .onChangedEmail(value),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    suffixIconColor: Colors.black,
                                    hintText: "Nhập Email",
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                          width: double.infinity,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(14)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                offset: const Offset(0, 1),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mật khẩu",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Expanded(
                                child: TextFormField(
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  onChanged: (value) => context
                                      .read<AuthProvider>()
                                      .onChangedPassword(value),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    suffixIconColor: Colors.black,
                                    hintText: "Nhập mật khẩu",
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                            bottom: 32.0,
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterView()));
                              },
                              child: const Text(
                                'Đăng ký',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 48.0,
                          child: ElevatedButton(
                            onPressed: () {
                              //truy cập Authprovider
                              context.read<AuthProvider>().login(context);
                            },
                            style: const ButtonStyle(
                              elevation: MaterialStatePropertyAll(8.0),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red),
                            ),
                            child: const Text(
                              'ĐĂNG NHẬP',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
