// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mindwell/common/home_screen.dart';
import 'package:mindwell/common/splash_screen.dart';

void main() {
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
