import 'package:edge/Bottomnavigationbar.student/enquiry_chat.dart';
import 'package:edge/Bottomnavigationbar.student/notification.dart';
import 'package:flutter/material.dart';
import 'package:edge/Bottomnavigationbar.student/base_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Enquiry extends StatefulWidget {
  const Enquiry({Key? key}) : super(key: key);

  @override
  State<Enquiry> createState() => _EnquiryState();
}

class _EnquiryState extends State<Enquiry> {
  var isExpanded = false;

  // Define a list of data for the cards
  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Question About',
      'description': 'Admission & Applications',
      'icon': Icons.library_books_rounded
    },
    {
      'title': 'Question About',
      'description': 'Financial aid & Scholarships',
      'icon': Icons.looks_one_outlined,
    },
    {
      'title': '   Question About',
      'description': 'Academic Life',
      'icon': Icons.workspace_premium_outlined
    },
  ];

  // Define a list of colors for the icons
  final List<Color> iconColors = [
    Colors.blue,
    Colors.green,
    Colors.red,
  ];

  // Define a list of colors for the cards
  final List<Color> cardColors = [
    Color.fromARGB(255, 203, 230, 250),
    Color.fromARGB(255, 187, 243, 197),
    Color.fromARGB(255, 239, 191, 194),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'FAQ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(.10),
              child: IconButton(
                  onPressed: () {
                    Get.to(NotificationScreen());
                  },
                  icon: Icon(Icons.notifications_none_outlined)))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 246, 242, 242),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'How Can We Help You?',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Keyword',
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(fontSize: 14),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 150, // Set height of the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cardData.length, // Number of cards
            itemBuilder: (context, index) {
              // Access data for each card based on the index
              String title = cardData[index]['title'] ?? '';
              String description = cardData[index]['description'] ?? '';
              IconData? iconData = cardData[index]['icon'];
              Color iconColor = iconColors[
                  index % iconColors.length]; // Get color based on index
              Color cardColor = cardColors[
                  index % cardColors.length]; // Get color based on index
              return Card(
                margin: EdgeInsets.all(8.0),
                color: cardColor, // Set background color of the card
                child: SizedBox(
                  width: 160, // Set width of each card
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              iconData ?? Icons.error,
                              color: iconColor, // Set color of the icon
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.black, // Text color
                              ),
                            ),
                          ],
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Top Questions',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                'View All',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              border: Border.all(color: Color.fromARGB(255, 202, 193, 193)),
              color: Colors.white,
            ),
            child: Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text(
                    'What Documents do i need for a collage application?',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                // null if expanded, will using default arrow
                trailing: isExpanded ? Icon(Icons.remove) : Icon(Icons.add),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 13,
                      bottom: 10,
                    ),
                    child: Column(children: [
                      Container(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  ' Common reqirements include transcripts,lettersof recomendation, a personal Statedments,Standardized test scores,and a completed application form',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() => isExpanded = expanded);
                },
              ),
            ),
          ),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        elevation: 6,
        onPressed: () {
          Get.to(EnquiryChatScreen());
        },
        child: const Icon(Icons.contact_support_outlined),
      ),
    );
  }
}
