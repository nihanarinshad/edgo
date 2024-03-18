import 'package:edge/Profile_tabbar/Academics.dart';
import 'package:edge/Profile_tabbar/Personal_info.dart';
import 'package:edge/Profile_tabbar/test.dart';
import 'package:edge/Profile_tabbar/works.dart';
import 'package:flutter/material.dart';

class Profiletabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4, // Specify the number of tabs
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 11, 2, 65),
              centerTitle: true,
              title: Text('Profile'),
              // leading: IconButton(
              //     onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'Personal Info',
                      style: TextStyle(
                          fontSize: 9.5,
                          color: Colors.white), // Set the font size here
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Academics',
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.white), // Set the font size here
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Works',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white), // Set the font size here
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Tests',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white), // Set the font size here
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                PersonalInfo(),
                Academics(),
                Works(),
                Tests(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
