import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class MainTestMentalHealth extends StatelessWidget {
  const MainTestMentalHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/main/testMental/icon-mental-health.png',
              width: 200,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text(
              'Are You Sure You Are Okay?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryFontColor),
            ),
            const SizedBox(height: 5),
            const Text(
              'Know your current mental condition so we can help you',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.primaryFontColor),
            ),
            const Text(
              'Mental health testing has significant benefits in understanding and maintaining psychological well-being. By taking a mental health test, a person can identify potential mental problems, assess stress levels, recognize symptoms of depression or anxiety.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.secondaryFontColor),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/confirmation-testMentalHealth');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize: const Size(double.infinity, 50),
                fixedSize: const Size(double.infinity, 55),
                backgroundColor: AppColors.primaryColor,
                shadowColor: AppColors.primaryColor,
              ),
              child: const Text('Start The Test',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ConfirmationTestMentalHealth extends StatelessWidget {
  const ConfirmationTestMentalHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Apakah Anda pernah melakukan test kesehatan mental sebelumnya?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/konsultasi');
                  },
                  child: const Text('Yes'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/test-mental-health');
                  },
                  child: const Text('No'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}