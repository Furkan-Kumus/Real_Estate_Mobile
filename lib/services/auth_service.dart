import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:real_estate_app/Pages/home_page.dart';

class AuthService{
  final userCollection = FirebaseFirestore.instance.collection("users");
  final firebaseAuth = FirebaseAuth.instance;

  Future<void> singUp(BuildContext context, {required String username, required String email, required String phoneNumber, required String password}) async{
    final navigator = Navigator.of(context);
    try{
      final UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      if(userCredential.user != null){
        _registerUser(username: username, email: email, phoneNumber: phoneNumber, password: password);
        Fluttertoast.showToast(msg: "Kayıt Başarılı!");
        navigator.pop();
      }
    } on FirebaseAuthException catch (e){
      Fluttertoast.showToast(msg: e.message!, toastLength: Toast.LENGTH_LONG);
    }
  }

  Future<void> singIn(BuildContext context, {required String email, required String password}) async{
    final navigator = Navigator.of(context);
    try{
      final UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      if(userCredential.user != null){
        Fluttertoast.showToast(msg: "Giriş Başarılı!");
        //navigator.push(MaterialPageRoute(builder: (context) => Anasayfa(),));
      }
    } on FirebaseAuthException catch (e){
      Fluttertoast.showToast(msg: e.message!, toastLength: Toast.LENGTH_LONG);
    }
  }

  Future<void> _registerUser({required String username, required String email, required String phoneNumber, required String password}) async{
    await userCollection.doc().set({
      "username" : username,
      "email" : email,
      "phoneNumber" : phoneNumber,
      "password" : password
    });
  }
}