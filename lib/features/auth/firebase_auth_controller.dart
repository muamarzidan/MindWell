import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FirebaseAuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get instance => null;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password
      );
      return credential.user;
    } catch (e) {
      print("Gagal register: $e");
    }
    return null;
  }


  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password
      );
      return credential.user;
    } catch (e) {
      print("Gagal login: $e");
    }
    return null;
  }
}