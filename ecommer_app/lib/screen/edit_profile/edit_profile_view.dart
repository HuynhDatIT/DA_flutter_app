import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: SizedBox(
          height: 48.0,
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
            ),
            onPressed: () {},
            child: const Text(
              'Thay đổi',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true, // tự động tạo nút quay lại màn hình
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          "Thay đổi thông tin",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        "https://vnreview.vn/image/16/51/08/1651089.jpg",
                      ),
                    ),
                    Align(
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Thay đổi",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
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
                        hintText: "Thay đổi tên",
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
                        hintText: "Thay đổi Email",
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
                        hintText: "Thay đổi mật khẩu",
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
                    "Địa chỉ",
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
                        hintText: "Thay đổi địa chỉ",
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
          ],
        ),
      ),
    );
  }
}
