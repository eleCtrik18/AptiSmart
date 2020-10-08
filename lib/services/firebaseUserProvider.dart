import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FirebaseUserProvider extends ChangeNotifier {
  User user;

  FirebaseUserProvider() {
    _getUser();
  }

  _getUser() async {
    this.user = await FirebaseAuth.instance.currentUser;
    notifyListeners();
    print('user active');
  }
}
