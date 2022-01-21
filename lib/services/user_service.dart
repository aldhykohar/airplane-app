import 'package:airplane/models/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel userModel) async {
    try {
      _userReference.doc(userModel.id).set({
        'email': userModel.email,
        'name': userModel.name,
        'hobby': userModel.hobby,
        'balance': userModel.balance,
      });
    } catch (e) {
      throw e;
    }
  }
}
