import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AuthService{
  final userCollection = FirebaseFirestore.instance.collection("users");

  Future<void> registerUser({required TextEditingController username, required TextEditingController email, required TextEditingController phoneNumber, required TextEditingController password}) async{
    await userCollection.doc().set({
      "username" : username.text,
      "email" : email.text,
      "phoneNumber" : phoneNumber.text,
      "password" : password.text
    });
  }
}