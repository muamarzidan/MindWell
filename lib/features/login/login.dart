import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:mindwell/features/auth/firebase_auth_controller.dart';

class Loginhandler {
  final FirebaseAuthController _auth = FirebaseAuthController();

  Future<void> loginWithEmailPassword(String email, String password, BuildContext context) async {
    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("Berhasil login");
      Navigator.pushReplacementNamed(context, "/biodata");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Gagal login"),
        ),
      );
    }
  }

  Future<void> loginWithGoogle(BuildContext context) async {
    final GoogleSignIn googleLogin = GoogleSignIn();

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleLogin.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);
        Navigator.of(context).pushReplacementNamed("/home");
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Gagal login"),
        ),
      );
    }
  }
}
