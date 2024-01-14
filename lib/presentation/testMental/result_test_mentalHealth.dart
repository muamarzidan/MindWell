import 'package:flutter/material.dart';

class ResultTestMentalHealth extends StatelessWidget {
  const ResultTestMentalHealth({Key? key}) : super(key: key);

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
              'Based on the test results, it appears that your stress levels, anxiety symptoms and sleep quality are likely to be of primary concern. Even if you feel socially supported and have neutral self-esteem, it s a good idea to take steps to manage your stress levels and improve your sleep. Consider consulting a mental health professional to get further support and plan appropriate actions.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/konseling');
              },
              child: const Text('Counseling'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Return to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
