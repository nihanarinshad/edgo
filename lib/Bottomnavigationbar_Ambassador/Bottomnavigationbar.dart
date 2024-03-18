import 'package:edge/Bottomnavigationbar_Ambassador/ChatHome.dart';
import 'package:edge/Bottomnavigationbar_Ambassador/Home.dart';
import 'package:edge/Bottomnavigationbar_Ambassador/Profile.dart';
import 'package:edge/Bottomnavigationbar_Ambassador/Referred_students.dart';
import 'package:edge/Bottomnavigationbar_Ambassador/connect.dart';
import 'package:flutter/material.dart';

class Ambassadorbottomnavigation extends StatefulWidget {
  const Ambassadorbottomnavigation({super.key});

  @override
  State<Ambassadorbottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<Ambassadorbottomnavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    AmbassadorHome(),
    ReferredStudents(),
    AConnect(),
    ChatHome(),
    AProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_sharp),
              label: 'Referred ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_sharp),
              label: 'Connect',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_outlined),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromARGB(255, 192, 169, 169),
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
