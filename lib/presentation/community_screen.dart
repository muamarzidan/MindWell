import 'package:flutter/material.dart';

import 'package:mindwell/theme/color.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme:
            const IconThemeData(size: 30.0, color: AppColors.primaryFontColor),
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(29, 147, 207, 255),
              ),
              child: const Icon(
                Icons.notifications,
                color: Color.fromARGB(240, 255, 179, 0),
                size: 120,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Don t have a notification yettt',
              style: TextStyle(
                color: AppColors.secondaryFontColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
