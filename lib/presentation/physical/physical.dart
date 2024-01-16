import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class PhysicalActivityData {
  final String title;
  final String description;
  final String imagePath;

  PhysicalActivityData(this.title, this.description, this.imagePath);
}

class PhysicalScreen extends StatefulWidget {
  @override
  _PhysicalScreenState createState() => _PhysicalScreenState();
}

class _PhysicalScreenState extends State<PhysicalScreen> {
  final List<PhysicalActivityData> Indor = [
    PhysicalActivityData('Aerobik', 'Increases heart rate', 'assets/images/main/physical/aerobik.png'),
    PhysicalActivityData('Stretching', 'Stretches stiff muscles', 'assets/images/main/physical/strech.png'),
    PhysicalActivityData('Dancer', 'Increases heart rate', 'assets/images/main/physical/dancer.png'),
  ];

  final List<PhysicalActivityData> Outdoor = [
    PhysicalActivityData('Running or Jogging', 'Increases energy', 'assets/images/main/physical/jogging.png'),
    PhysicalActivityData('Bicycle', 'Provide positive benefits', 'assets/images/main/physical/bicycle.png'),
  ];

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
              const Text(
                'Physical Activity at Home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor,
                ),
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
                itemCount: Indor.length,
                itemBuilder: (context, index) {
                  return _CardListPhysical(
                    Indor[index].imagePath,
                    Indor[index].title,
                    Indor[index].description,
                  );
                },
              ),
              const SizedBox(height: 40),
              const Text(
                'Outdoor Physical Activities',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor,
                ),
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
                itemCount: Outdoor.length,
                itemBuilder: (context, index) {
                  return _CardListPhysical(
                    Outdoor[index].imagePath,
                    Outdoor[index].title,
                    Outdoor[index].description,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardListPhysical extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const _CardListPhysical(this.imagePath, this.title, this.description);

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
            offset: const Offset(2, 5)
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
