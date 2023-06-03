import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommer_app/model/account.dart';

class AuthFirebaseData {
  // table users
  final CollectionReference _authFB =
      FirebaseFirestore.instance.collection('users');

  Future<Account?> register(
      String username, String password, String email) async {
    try {
      final param = {
        'email': email,
        'password': password,
        'username': username,
        'rule': 'user',
      };
      final result = await _authFB.add(param);

      final DocumentSnapshot<Object?> snapshot = await result.get();
      final data = snapshot.data() as Map?;

      if (data == null) return null;

      final documentId = snapshot.id; // userid

      final Account account = Account(
        id: documentId,
        username: data['username'],
        email: data['email'],
        password: data['password'],
      );

      print(account);

      return account;
    } catch (e) {
      return null;
    }
  }

  Future<String?> login(String email, String password) async {
    final querySnapshot =
        await _authFB.where('email', isEqualTo: 'hoai@gmail.com').get();
    //kiểm tra email có data không
    if (querySnapshot.docs.isNotEmpty) {
      // lấy phần tử đầu tiên
      final documentSnapshot = querySnapshot.docs.first;
      //final documentId = documentSnapshot.id;
      // lấy data
      final userData = documentSnapshot.data();

      if (userData == null) return null;
      // print(documentId);

      final convert = userData as Map<String, dynamic>;

      print(convert);

      if (convert['password'] == password) {
        print("Đăng nhập thành công");
        return convert['rule'];
      }

      return null;
    }

    return null;
  }
}
