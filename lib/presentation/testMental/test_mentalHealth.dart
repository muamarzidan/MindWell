import 'package:flutter/material.dart';

class MentalHealthTestPage extends StatefulWidget {
  const MentalHealthTestPage({Key? key}) : super(key: key);

  @override
  _MentalHealthTestPageState createState() => _MentalHealthTestPageState();
}

class _MentalHealthTestPageState extends State<MentalHealthTestPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> _questions = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
    'Question 6',
    'Question 7',
    'Question 8',
    'Question 9',
    'Question 10',
    'Feedback',
  ];

  // List untuk menyimpan pilihan jawaban yang dipilih oleh pengguna
  List<String?> _selectedOptions = List.filled(11, null);

  @override
  Widget build(BuildContext context) {
    double progress = (_currentPage + 1) / _questions.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health Test'),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
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
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question,
              style: const TextStyle(fontSize: 18),
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
        _buildOption('Option 1', questionIndex),
        _buildOption('Option 2', questionIndex),
        _buildOption('Option 3', questionIndex),
        _buildOption('Option 4', questionIndex),
        _buildOption('Option 5', questionIndex),
      ],
    );
  }

  Widget _buildOption(String optionText, int questionIndex) {
    bool isSelected = _selectedOptions[questionIndex] == optionText;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
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
          labelText: 'Feedback',
        ),
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
          child: const Text('Back'),
        ),
        ElevatedButton(
          onPressed: () { 
            if (_currentPage == _questions.length - 1) {
              Navigator.pushReplacementNamed(context, '/splash');
            } else {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          child: _currentPage == _questions.length - 1
              ? const Text('Submit')
              : const Text('Next'),
        ),
      ],
    );
  }
}
