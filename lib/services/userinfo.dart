import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<int> registerBuyer(
    String name, String phoneNumber, String email, String clas) async {
  int statusCode = 1;

  User user = await getUser();

  SharedPreferences ref = await SharedPreferences.getInstance();

  Map<String, dynamic> dinerDetails = new Map();
  dinerDetails.addAll({
    'name': name,
    'email': email,
    'class': clas,
    'uid': user.uid,
    'phoneNo': phoneNumber,
  });

  await FirebaseFirestore.instance
      .collection('users')
      .doc(user.uid)
      .update(dinerDetails)
      .catchError((onError) {
    statusCode = 3;
  });

  return statusCode;
}

Future<bool> isUserExist() async {
  var user = await getUser();
  SharedPreferences ref = await SharedPreferences.getInstance();

  //  if(user.displayName!="" && user.displayName!=null && location !=null && location !=""){
  var userDoc =
      await Firestore.instance.collection('users').document(user.uid).get();
  print('diner exists');
  return userDoc.exists;
}

Future<User> getUser() async {
  return FirebaseAuth.instance.currentUser;
}
