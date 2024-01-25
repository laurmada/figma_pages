import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> saveUser(
      String email,
      String password,
      String country,
      String phoneNumber,
      String username,
      String firstName,
      String lastName,
      String gender,
      DateTime birthday) async {
    await firestore.collection('users').doc().set({
      'email': email,
      'password': password,
      'country': country,
      'phone_number': phoneNumber,
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'gender': gender,
      'birthday': birthday,
    });
  }
}
