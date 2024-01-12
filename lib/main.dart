import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mindwell/common/splash_screen.dart';
import 'package:mindwell/features/login/login_screen.dart';
import 'firebase_options.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
  runApp(const MindWellApp());
}

class MindWellApp extends StatelessWidget {
  const MindWellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      title: "MindWell",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        child: LoginScreen() 
      ),
    );
  }
}
