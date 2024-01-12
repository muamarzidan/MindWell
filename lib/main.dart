// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mindwell/common/splash_screen.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: "AIzaSyAQuJIWezOjpVi75Q6eNziIDnMe_bk4CS4", appId: "1:168942969498:web:c8456ddfec7abd86447523", messagingSenderId: "168942969498", projectId: "mindwell-808d4")
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MindWellApp());
}

class MindWellApp extends StatelessWidget {
  const MindWellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( title: "MindWell",
      
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
