import 'package:edge/Bottomnavigationbar.student/Enquiry.dart';
import 'package:edge/Bottomnavigationbar.student/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseScreen extends StatelessWidget {
  final Widget body;
  final String appBarText;
  BaseScreen({
    Key? key,
    required this.body,
    required this.appBarText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                appBarText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () => Get.to(() => NotificationScreen()),
                  icon: Icon(Icons.notifications_none)),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 246, 241, 241),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide.none), // Remove bottom line
                  ),
                  child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: const Color.fromARGB(255, 235, 231, 231),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/lady.png'), // Add your avatar image here
                            ),
                            SizedBox(
                                width:
                                    10), // Adjust spacing between image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ashad",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 40, 4, 133),
                                      fontSize: 18),
                                ),
                                Text(
                                  "Complete profile better use",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 40, 4, 133),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                ListTile(
                  leading: Icon(
                    Icons.sticky_note_2_outlined,
                    color: Color.fromARGB(255, 40, 4, 133),
                  ),
                  title: Text(
                    'Psychometric Analysis',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 40, 4, 133),
                    ),
                  ),
                  onTap: () {
                    // Add navigation functionality here
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.text_snippet_outlined,
                    color: Color.fromARGB(255, 40, 4, 133),
                  ),
                  title: Text(
                    'Tests',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 40, 4, 133),
                    ),
                  ),
                  onTap: () {
                    // Add navigation functionality here
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.live_help_outlined,
                    color: Color.fromARGB(255, 40, 4, 133),
                  ),
                  title: Text(
                    'Enquiry',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 40, 4, 133),
                    ),
                  ),
                  onTap: () {
                    // Add navigation functionality here
                    Get.to(() => Enquiry());
                  },
                ),
                Divider()
              ],
            ),
          ),
          body: body),
    );
  }
}
