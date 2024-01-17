import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class CounselingScreen extends StatefulWidget {
  @override
  _CounselingScreenState createState() => _CounselingScreenState();
}

class _CounselingScreenState extends State<CounselingScreen> {
  final List<Map<String, dynamic>> dataListCounseling = [
    {
      'name': 'Rina Aprina. M.Psi.,Psikolog',
      'specialization': 'CBT',
      'schedule': 'Schedule',
      'rating': 4.9,
      'imagePath': 'assets/images/main/psikolog/Psikolog1_Rina.jpg',
    },
    {
      'name': 'Kafka Nafiza. M.Psi.,Psikolog',
      'specialization': 'Systematic Therapy',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog2_Kafka.jpg',
    },
    {
      'name': 'Meisari. M.Psi.,Psikolog',
      'specialization': 'Behavioral Therapy',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog3_Meisari.jpg',
    },
    {
      'name': 'Alfan Ridwan. M.Psi.,Psikolog',
      'specialization': 'CBT',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog4_Alfan.jpg',
    },
    {
      'name': 'Alfan Ridwan. M.Psi.,Psikolog',
      'specialization': 'CBT',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog4_Alfan.jpg',
    },
    {
      'name': 'Alfan Ridwan. M.Psi.,Psikolog',
      'specialization': 'CBT',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog4_Alfan.jpg',
    },
    {
      'name': 'Alfan Ridwan. M.Psi.,Psikolog',
      'specialization': 'CBT',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog4_Alfan.jpg',
    },
    {
      'name': 'Alfan Ridwan. M.Psi.,Psikolog',
      'specialization': 'CBT',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog4_Alfan.jpg',
    },
    {
      'name': 'Alfan Ridwan. M.Psi.,Psikolog',
      'specialization': 'CBT',
      'schedule': 'Monday, 10:00 AM',
      'rating': 4.5,
      'imagePath': 'assets/images/main/psikolog/Psikolog4_Alfan.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Column(
                children: dataListCounseling.map((counselingData) {
                  return _CardListCounseling(
                    name: counselingData['name'],
                    specialization: counselingData['specialization'],
                    schedule: counselingData['schedule'],
                    rating: counselingData['rating'],
                    imagePath: counselingData['imagePath'],
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardListCounseling extends StatelessWidget {
  final String name;
  final String specialization;
  final String schedule;
  final double rating;
  final String imagePath;

  const _CardListCounseling({
    required this.name,
    required this.specialization,
    required this.schedule,
    required this.rating,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(90, 241, 241, 241).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(2, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          _CounselingImage(imagePath: imagePath),
          const SizedBox(width: 16),
          _CounselingDetails(
            name: name,
            specialization: specialization,
            schedule: schedule,
          ),
          const Spacer(),
          _CounselingRating(
            rating: rating,
          ),
        ],
      ),
    );
  }
}

class _CounselingImage extends StatelessWidget {
  final String imagePath;

  const _CounselingImage({
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(imagePath),
          width: 50,
          height: 50,
        ),
      ],
    );
  }
}

class _CounselingDetails extends StatelessWidget {
  final String name;
  final String specialization;
  final String schedule;

  const _CounselingDetails({
    required this.name,
    required this.specialization,
    required this.schedule,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          specialization,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          schedule,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _CounselingRating extends StatelessWidget {
  final double rating;

  const _CounselingRating({
    required this.rating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              rating.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellow[700],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'View Profile',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 12,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
