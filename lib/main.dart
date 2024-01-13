import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mindwell/common/home_screen.dart';
import 'firebase_options.dart';

import 'package:mindwell/common/splash_screen.dart';
import 'package:mindwell/presentation/login/login_screen.dart';
import 'package:mindwell/features/register/register_screen.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MindWellApp());
}

class MindWellApp extends StatelessWidget {
  const MindWellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MindWell",
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
        "/home": (context) => const HomeScreen(),
      },
    );
  }
}
