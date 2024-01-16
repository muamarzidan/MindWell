import 'package:flutter/material.dart';

class EmergencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Action for Button 1
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Button 1'),
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  // Action for Button 2
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.red),
                  backgroundColor: Colors.white,
                  primary: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Button 2'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
