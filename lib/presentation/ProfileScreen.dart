import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image (bulat kecil ditengah)
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile_image.jpg'),
            ),
            SizedBox(height: 20),
            // Text (Informasi Personal)
            Text(
              'Informasi Personal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Kotak (berisi 2 komponen, yaitu icon account di kiri dan disebelah kanannya teks "nama")
            _buildInfoBox(Icons.account_circle, 'Nama', 'John Doe'),
            // Kotak (berisi 2 komponen, yaitu icon account di kiri dan disebelah kanannya teks "nama")
            _buildInfoBox(Icons.account_circle, 'Nama', 'Jane Doe'),
            // Kotak (berisi 2 komponen, yaitu icon gender di kiri dan disebelah kanannya teks "female")
            _buildInfoBox(Icons.person, 'Gender', 'Female'),
            // Kotak (berisi 2 komponen, yaitu icon kalender dan disebelah kanannya teks "03/02/2003")
            _buildInfoBox(Icons.calendar_today, 'Tanggal Lahir', '03/02/2003'),
            // Kotak (berisi 2 komponen, yaitu icon email dan disebelah kanannya teks "mail@gmail.com")
            _buildInfoBox(Icons.email, 'Email', 'mail@gmail.com'),
            // Kotak (berisi 2 komponen, yaitu icon lock/gembok dan disebelah kanannya teks "Ganti password")
            _buildInfoBox(Icons.lock, 'Password', 'Ganti password'),
            SizedBox(height: 20),
            // Teks Bahasa
            Text(
              'Bahasa',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBox(IconData icon, String label, String value) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon di kiri
          Icon(icon),
          // Teks di kanan
          Text(
            '$label: $value',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}