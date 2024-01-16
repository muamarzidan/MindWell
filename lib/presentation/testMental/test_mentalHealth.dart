import 'package:flutter/material.dart';
import 'package:mindwell/theme/color.dart';

class MentalHealthTestPage extends StatefulWidget {
  const MentalHealthTestPage({Key? key}) : super(key: key);

  @override
  _MentalHealthTestPageState createState() => _MentalHealthTestPageState();
}

class _MentalHealthTestPageState extends State<MentalHealthTestPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> _questions = [
    'How high are your stress levels right now?',
    'Are you experiencing symptoms of anxiety or depression?',
    'How is your sleep quality?',
    'To what extent do you feel balanced between work and personal life?',
    'Do you have realistic goals and expectations?',
    'What is your self-esteem level?',
    'Have you or people around you noticed drastic changes in your behavior or mood?',
    'Do you use addictive substances such as alcohol or drugs?',
    'Pertanyaan 9',
    'Pertanyaan 10',
    'What do you expect after you get our service?',
  ];

  List<String?> _selectedOptions = List.filled(11, null);

  @override
  Widget build(BuildContext context) {
    double progress = (_currentPage + 1) / _questions.length;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[300],
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _questions.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return _buildQuestionCard(_questions[index], index);
                },
              ),
            ),
            const SizedBox(height: 20),
            _buildNavigationButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionCard(String question, int index) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(1),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question,
            style: const TextStyle(fontSize: 18, color: AppColors.primaryFontColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          _currentPage == 10 ? _buildFeedbackBox() : _buildOptions(index),
        ],
      ),
    ),
  );
}

  Widget _buildOptions(int questionIndex) {
    return Column(
      children: [
        _buildOption('Opsi 1', questionIndex),
        _buildOption('Opsi 2', questionIndex),
        _buildOption('Opsi 3', questionIndex),
        _buildOption('Opsi 4', questionIndex),
        _buildOption('Opsi 5', questionIndex),
      ],
    );
  }

  Widget _buildOption(String optionText, int questionIndex) {
    bool isSelected = _selectedOptions[questionIndex] == optionText;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 181, 181, 181),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          textAlign: TextAlign.center,
          optionText,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
        onTap: () {
          setState(() {
            _selectedOptions[questionIndex] = optionText;
          });
        },
      ),
    );
  }

  Widget _buildFeedbackBox() {
    return Expanded(
      child: TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        maxLines: 5,
        onChanged: (feedback) {},
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
  ElevatedButton(
    onPressed: _currentPage == 0
        ? null
        : () {
            _pageController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
    style: ElevatedButton.styleFrom(
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    ),
    child: const Icon(Icons.arrow_back, color: AppColors.primaryColor),
        ),
        ElevatedButton(
          onPressed: () {
            if (_currentPage == _questions.length - 1) {
              Navigator.pushReplacementNamed(context, '/result-test-mental-health');
            } else {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
            backgroundColor: AppColors.primaryColor,
          ),
          child: _currentPage == _questions.length - 1
              ? const Text('Submit', style: TextStyle(color: Colors.white))
              : const Icon(Icons.arrow_forward, color: Colors.white),
        ),
      ],
    );
  }
}
