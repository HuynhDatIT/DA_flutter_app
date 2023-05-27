import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          FocusScope.of(context).unfocus(), // focus màn hình ẩn bàn phím
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context), //pop màn hình hiện tại
                  radius: 5.0,
                  child: const Icon(Icons.arrow_back, size: 24.0),
                ),
                const SizedBox(height: 34.0),
                const Text(
                  'Đăng ký',
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
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
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
                        "Tên hiển thị",
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
                          onChanged: (value) {
                            // if đầu dùng dể kiểm tra xem showIcon là false và giá trị input không rỗng thì
                            // bật showClearIcon và if dưới ngc lại
                          },
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIconColor: Colors.black,
                            hintText: "Nhập tên",
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
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
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
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
                          onChanged: (value) {
                            // if đầu dùng dể kiểm tra xem showIcon là false và giá trị input không rỗng thì
                            // bật showClearIcon và if dưới ngc lại
                          },
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
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
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
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
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
                          onChanged: (value) {
                            // if đầu dùng dể kiểm tra xem showIcon là false và giá trị input không rỗng thì
                            // bật showClearIcon và if dưới ngc lại
                          },
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
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
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
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Bạn đã có tài khoản ?',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(width: 7.0),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 48.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(8.0),
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text(
                      "ĐĂNG KÝ",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const SizedBox(height: 45.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
