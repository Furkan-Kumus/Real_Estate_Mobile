import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddService{
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> AddApart({
    required String userId,
    required String il,
    required String ilce,
    required String mahalle,
    required String odaSayi,
    required String kiraSuresi,
    required String metrekare,
    required String fotoUrl,
  }) async {
    try {
      await FirebaseFirestore.instance
          .collection('aparts')
          .doc(userId)
          .collection('UserAparts')
          .add({
        'il': il,
        'ilce': ilce,
        'mahalle': mahalle,
        'metrekare': metrekare,
        'odaSayi': odaSayi,
        'kiraSuresi': kiraSuresi,
        'fotoUrl': fotoUrl,
      });

      await FirebaseFirestore.instance
          .collection('AllAparts')
          .add({
        'il': il,
        'ilce': ilce,
        'mahalle': mahalle,
        'metrekare': metrekare,
        'odaSayi': odaSayi,
        'kiraSuresi': kiraSuresi,
        'fotoUrl': fotoUrl,
      });
    } catch (e) {
      print('Hata: $e');
    }
  }

  String getUserId() {
    User? user = auth.currentUser;
    String userId = user!.uid;
    return userId;
  }

}