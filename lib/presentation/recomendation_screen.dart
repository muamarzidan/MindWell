import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class RecommendationScreen extends StatefulWidget {
  @override
  _RecommendationScreenState createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme:
            const IconThemeData(size: 30.0, color: AppColors.primaryFontColor),
        actions: const [],
      ),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meditation Recommendations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryFontColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> titles = [
                    'Burn Out',
                    'Happiness',
                    'Everything has a limit',
                    'Concentration',
                  ];

                  List<String> descriptions = [
                    'Helps reduce stress',
                    'Increase affection',
                    'Helps reduce stress',
                    'Provide support for mental',
                  ];

                  List<String> imagePaths = [
                    'assets/images/main/recommendation/burn.png',
                    'assets/images/main/recommendation/happines.png',
                    'assets/images/main/recommendation/everything.png',
                    'assets/images/main/recommendation/concentration.png',
                  ];

                  return _CardListmeditation(
                    titles[index],
                    descriptions[index],
                    imagePaths[index],
                  );
                },
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Physical Activity Recommendations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryFontColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> titles = [
                    'Burn Out',
                    'Happiness',
                    'Everything has a limit',
                    'Concentration',
                  ];

                  List<String> descriptions = [
                    'Helps reduce stress',
                    'Increase affection',
                    'Helps reduce stress',
                    'Provide support for mental',
                  ];

                  List<String> imagePaths = [
                    'assets/images/main/recommendation/jogging.png',
                    'assets/images/main/recommendation/bycycle.png',
                    'assets/images/main/recommendation/aerobik.png',
                    'assets/images/main/recommendation/strech.png',
                  ];

                  return _CardListPhysical(
                    titles[index],
                    descriptions[index],
                    imagePaths[index],
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardListmeditation extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _CardListmeditation(this.title, this.description, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 120,
            width: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardListPhysical extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _CardListPhysical(this.title, this.description, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 120,
            width: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
