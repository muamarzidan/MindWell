import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mindwell/features/auth/form_auth_controller.dart';
import 'package:mindwell/features/auth/firebase_auth_controller.dart';
import 'package:mindwell/features/login/login.dart';
import 'package:mindwell/theme/color.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final FirebaseAuthController _auth = FirebaseAuthController();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Mind",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Well",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),const SizedBox(height: 15),
              const Text(
                "Welcome in MindWell",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Poppins",
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "start creating your account",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(height: 20),
              FormAuthController(
                controller: _emailController,
                hintText: "Enter username",
                isPasswordField: false,
              ),
              const SizedBox(height: 20),
              FormAuthController(
                controller: _emailController,
                hintText: "Enter your email address",
                isPasswordField: false,
              ),
              const SizedBox(height: 20),
              FormAuthController(
                controller: _passwordController,
                hintText: "Enter your password",
                isPasswordField: false,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _register();
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //make 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: const Text(
                      "Now Login",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _register() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);
    if (user != null) {
      print("Berhasil register");
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Gagal register"),
        ),
      );
    }
  }
}


