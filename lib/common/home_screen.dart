import 'package:flutter/material.dart';
import 'package:mindwell/presentation/community_screen.dart';
import 'package:mindwell/presentation/Counseling/schedule_counseling_screen.dart';
import 'package:mindwell/presentation/Counseling/package_counseling_screen.dart';

import 'package:mindwell/theme/color.dart';
import 'package:mindwell/components/appbar.dart';
import 'package:mindwell/presentation/home/home.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<String> _routes = [
    '/home',
    '/community',
    '/package',
    '/schedule',
  ];

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    CommunityScreen(),
    PackageScreen(),
    ScheduleScreen(),
  ];

  void _onItemTapped(int index) {
  if (_selectedIndex != index) {
    Navigator.pushNamed(context, _routes[index]);
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarPrimary(
        username: 'User',
        description: 'Welcome to MindWell',
        profileIcon: 'assets/images/logo/logo_base_profile.png',
        notificationIcon: 'assets/images/logo/logo_notification.png',
        profileIconTap: () {
          // Action
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: _buildFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety_outlined),
            label: 'Counseling',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_time_sharp),
            label: 'Schedule',
          ),
        ],
      ),
    );
  }

  Widget _buildFAB() {
    return Stack(
      children: [
        Positioned(
          bottom: 30,
          left: MediaQuery.of(context).size.width / 2 - 30,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/emergency');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: MediaQuery.of(context).size.width / 2 - 20,
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
          ),
        ),
      ],
    );
  }
}



