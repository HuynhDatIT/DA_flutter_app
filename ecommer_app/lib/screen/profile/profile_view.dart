import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommer_app/screen/edit_profile/edit_profile_view.dart';
import 'package:ecommer_app/screen/order_management/order_management_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hồ sơ',
          style: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 18.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: FractionallySizedBox(
                        alignment: Alignment.topCenter,
                        heightFactor: 0.9,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                "https://upload.wikimedia.org/wikipedia/commons/f/fe/Son_Tung_M-TP_1_%282017%29.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Flexible(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Sơn tùng MTP',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'matildabrown@mail.com',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfileView())),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        "Thông tin cá nhân",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: const Text(
                        "Chỉnh sửa ảnh, thông tin",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OrderManagementView())),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        "Đơn hàng",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: const Text(
                        "Already have 12 orders",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_right),
                    ),
                  ],
                )),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
