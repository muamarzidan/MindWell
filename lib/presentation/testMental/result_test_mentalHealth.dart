import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';



class ResultTestMentalHealth extends StatelessWidget {
  const ResultTestMentalHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'YOUR CIRCUMSTANCE REALLY NEEDS TREATMENT',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    'Based on the test results, it appears that your stress levels, anxiety symptoms and sleep quality are likely to be of primary concern. Even if you feel socially supported and have neutral self-esteem, it s a good idea to take steps to manage your stress levels and improve your sleep. Consider consulting a mental health professional to get further support and plan appropriate actions.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/package');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.primaryColor,
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    'Counseling',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                  ),
                  child: const Text(
                    'Return to Home',
                    style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}



