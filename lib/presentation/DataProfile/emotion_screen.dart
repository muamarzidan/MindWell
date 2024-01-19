import 'package:flutter/material.dart';

class EmotionScreen extends StatefulWidget {
  @override
  _EmotionScreenState createState() => _EmotionScreenState();
}

class _EmotionScreenState extends State<EmotionScreen> {
  String _username = '';
  String _firstName = '';
  String _lastName = '';
  DateTime _dob = DateTime.now();
  String _gender = 'Female'; // Default gender
  String _address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: _changeProfileImage,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/logo/logo_base_profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTextField('Username', _username, (value) {
                    setState(() {
                      _username = value;
                    });
                  }),
                  _buildTextField('First Name', _firstName, (value) {
                    setState(() {
                      _firstName = value;
                    });
                  }),
                  _buildTextField('Last Name', _lastName, (value) {
                    setState(() {
                      _lastName = value;
                    });
                  }),
                  _buildDatePicker('Date of Birth', _dob),
                  _buildGenderDropdown(),
                  _buildTextField('Address', _address, (value) {
                    setState(() {
                      _address = value;
                    });
                  }),
                  SizedBox(height: 20),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _changeProfileImage() {
    // Implement logic to change profile image
  }

  Widget _buildTextField(
      String label, String value, ValueChanged<String> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: label,
            border: OutlineInputBorder(),
          ),
          onChanged: onChanged,
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildDatePicker(String label, DateTime selectedDate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        InkWell(
          onTap: () => _selectDate(context),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              "${selectedDate.toLocal()}".split(' ')[0],
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dob,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _dob) {
      setState(() {
        _dob = picked;
      });
    }
  }

  Widget _buildGenderDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Gender',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        DropdownButton<String>(
          value: _gender,
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                _gender = newValue;
              });
            }
          },
          items: <String>['Female', 'Male']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  void _submitForm() {
    // Implement logic to submit the form data
    print('Username: $_username');
    print('First Name: $_firstName');
    print('Last Name: $_lastName');
    print('Date of Birth: $_dob');
    print('Gender: $_gender');
    print('Address: $_address');
    // Add logic to send data to backend or perform other actions
  }
}

void main() {
  runApp(MaterialApp(
    home: EmotionScreen(),
  ));
}
