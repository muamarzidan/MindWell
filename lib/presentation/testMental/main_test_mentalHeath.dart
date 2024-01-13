import 'package:flutter/material.dart';

class MainTestMentalHealth extends StatelessWidget {
  const MainTestMentalHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Apakah Anda ingin memulai test kesehatan mental?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/confirmation-testMentalHealth');
              },
              child: const Text('Start Test'),
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
                    // Pergi ke halaman konsultasi
                    Navigator.pushReplacementNamed(context, '/konsultasi');
                  },
                  child: const Text('Yes'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Pergi ke halaman test pertanyaan
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