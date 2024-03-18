import 'package:edge/Ambassador/Todo.dart';
import 'package:edge/Ambassador/Training.dart';
import 'package:edge/Ambassador/card.dart';
import 'package:edge/Ambassador_report.dart/reports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AmbassadorHome extends StatelessWidget {
  final List<Map<String, dynamic>> cardData = [
    {
      "icon": Icons.access_alarm_sharp,
      "title": "Hours Spend",
      "subtitle": "54",
      "color": Colors.white
    },
    {
      'icon': Icons.workspace_premium_outlined,
      "title": "Referred Students",
      "subtitle": "29",
      "color": Colors.white
    },
    {
      "icon": Icons.request_page,
      "title": "Connect Request",
      "subtitle": "43",
      "color": Colors.white
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Color.fromARGB(255, 246, 245, 245),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60.0),
              bottomRight: Radius.circular(60.0),
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.all(2), // Adjust the padding as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // White color for the outer border
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.all(2), // Adjust the padding as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Colors.black, // Black color for the inner border
                        ),
                        child: CircleAvatar(
                          radius: 30, // Adjusted radius
                          backgroundImage: AssetImage('assets/baby.jpg'),
                          // Example avatar image
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ambassador',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Fathima Nihana',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //     height:
                    //         10), // Adjust spacing between image and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Referred Students",
                          style: TextStyle(
                              color: Color.fromARGB(255, 246, 242, 254),
                              fontSize: 12),
                        ),
                        Text(
                          "29",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                      ],
                    ),
                  ],
                )

                // Additional profile information or content can be added below
              ],
            ),
          ),

          actions: [
            SizedBox(
              width: 25,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.note_alt_outlined),
            ),
          ],

          // Other AppBar properties can be added here
        ),
      ),
      backgroundColor: Color.fromARGB(255, 244, 240, 240),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide.none), // Remove bottom line
              ),
              child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/lady.png'), // Add your avatar image here
                        ),
                        SizedBox(
                            width: 10), // Adjust spacing between image and text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Nihana",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "Ambassador",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.sticky_note_2_outlined, color: Colors.black),
              title: Text(
                'To-do',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.to(Todo());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.report_gmailerrorred, color: Colors.black),
              title: Text(
                'Report',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Add navigation functionality here
                Get.to(Reports());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.model_training_sharp, color: Colors.black),
              title: Text(
                'Training',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Add navigation functionality here
                Get.to(Training());
              },
            ),
            Divider()
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
            width: 10,
          ),
          Container(
            height: 160.0, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardData.length,
              itemBuilder: (BuildContext context, int index) {
                return CardWidget(
                  icon: cardData[index]["icon"],
                  title: cardData[index]["title"],
                  subtitle: cardData[index]["subtitle"],
                  color: cardData[index]["color"],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
