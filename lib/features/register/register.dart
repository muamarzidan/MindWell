import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:mindwell/features/auth/firebase_auth_controller.dart';

class RegisterHandler {
  final FirebaseAuthController _auth = FirebaseAuthController();
  late String username; 

  Future<void> register(BuildContext context, TextEditingController usernameController,
      TextEditingController emailController, TextEditingController passwordController) async {
    username = usernameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);
    if (user != null) {
      print("Berhasil register");
      Navigator.pushReplacementNamed(context, "/biodata");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Gagal register"),
        ),
      );
    }
  }
}