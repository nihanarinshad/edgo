import 'package:edge/Bottomnavigationbar.student/Applied_university.dart';
import 'package:edge/Bottomnavigationbar.student/Connect_Ambasider.dart';
import 'package:edge/Bottomnavigationbar.student/Home.dart';
import 'package:edge/Bottomnavigationbar.student/Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Applieduniversity(),
    Connect(),
    Applieduniversity(),

    Profile(),
    // PageFour(),
    // PageFive(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Applied Uni',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Connect',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_outlined),
            label: 'Course Finder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 8, 48, 82),
        unselectedItemColor: const Color.fromARGB(255, 192, 169, 169),
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
