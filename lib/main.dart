import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mindwell/playground/video.dart';
import 'package:mindwell/presentation/notification/notification.dart';
import 'package:mindwell/presentation/stepPage/step_page.dart';
import 'package:mindwell/presentation/testMental/confirmation_test_mentalHealt.dart';
import 'package:mindwell/presentation/testMental/result_test_mentalHealth.dart';
import 'package:mindwell/presentation/testMental/test_mentalHealth.dart';
import 'firebase_options.dart';

import 'package:mindwell/common/splash_screen.dart';
import 'package:mindwell/common/home_screen.dart';
import 'package:mindwell/presentation/login/login_screen.dart';
import 'package:mindwell/features/register/register_screen.dart';
import 'package:mindwell/presentation/testMental/main_test_mentalHeath.dart';

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
        "/splash": (context) => const SplashScreen(),
        "/step-page": (context) => const StepPage(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
        "/home": (context) => const HomeScreen(),
        "/main-test": (context) => const MainTestMentalHealth(),
        "/notification": (context) => const NotificationScreen(),
        "/playground": (context) => VideoScreen (youtubeVideoId: "FrlxZOCYY0w", thumbnailUrl: "https://github.com/muamarzidan/MindWell/assets/89593258/04146a43-0a46-484e-be51-c3aa8c2a463f",),
        "/confirmation-test": (context) => const ConfirmationTestMentalHealth(),
        "/test-mental-health": (context) => const MentalHealthTestPage(),
        "/result-test-mental-health": (context) => const ResultTestMentalHealth(),
        
      },
    );
  }
}
