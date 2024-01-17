import 'package:flutter/material.dart';

import 'package:mindwell/theme/color.dart';

class DetailPsikologScreen extends StatefulWidget {
  @override
  _DetailPsikologScreenState createState() => _DetailPsikologScreenState();
}

class _DetailPsikologScreenState extends State<DetailPsikologScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTopRow(),
            const SizedBox(height: 10),
            const Text(
              'About Doctor',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor),
            ),
            const Text(
              'I am Kafka Nafizah. I am a professional in the field of psychology with expertise and dedication to helping individuals achieve mental and emotional well-being. I am committed to creating a safe and supportive space for clients and helping them understand and overcome mental, emotional and interpersonal challenges.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryFontColor,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Education',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'S1 Psikologi - Fakultas Psikologi',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryFontColor,
              ),
            ),
            const Text(
              'Universitas Gajah Mada',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryFontColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'S2 Psikologi - Fakultas Psikologi',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryFontColor,
              ),
            ),
            const Text(
              'University of Tokyo',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryFontColor,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Date',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor),
            ),
            const SizedBox(height: 5),
            _buildEducationRow(),
            const SizedBox(height: 20),
            const Text(
              'Time',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColor),
            ),
            const SizedBox(height: 5),
            _timeList(
              times,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                minimumSize: const Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Booking Now',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopRow() {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 100,
          child: Image.asset('assets/images/main/psikolog/Psikolog1_Rina.jpg',
              fit: BoxFit.cover),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Kafka Nafiza. M.Psi. Psikolog',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryFontColor),
              ),
              const Text(
                'Specialization : CBT, Systematic Therapy, Behavioral Therapy',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryFontColor),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.circle,
                      color: Colors.lightGreenAccent[400], size: 16),
                  const Text(
                    '3 years experience',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber, width: 1),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          '4.5',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  int selectedEducationIndex = -1;

  Widget _buildEducationRow() {
    const double boxSize = 40.0;
    const double spacing = 20.0;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          30,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedEducationIndex = index;
              });
            },
            child: Container(
              width: boxSize,
              height: boxSize,
              margin: EdgeInsets.only(right: spacing),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: selectedEducationIndex == index
                      ? Colors.yellow
                      : AppColors.secondaryFontColor,
                ),
              ),
              child: Center(
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(
                    color: AppColors.primaryFontColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    }


  Widget _timeList(List<String> times) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          times.length,
          (index) => Container(
            width: 70,
            height: 40,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: AppColors.secondaryFontColor,
              ),
            ),
            child: Center(
              child: Text(
                times[index],
                style: const TextStyle(
                  color: AppColors.primaryFontColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Contoh penggunaan
  final List<String> times = ['17.00', '01.00', '20.00', '12.00', '15.00'];
}
