import 'package:edge/Ambassador/Todo.dart';
import 'package:edge/Ambassador/Training.dart';
import 'package:edge/Ambassador/notification.dart';
import 'package:edge/Ambassador_report.dart/reports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ABaseScreen extends StatelessWidget {
  final Widget body;
  final String appBarText;
  ABaseScreen({
    Key? key,
    required this.body,
    required this.appBarText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                appBarText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            foregroundColor: Colors.white,
            actions: [
              SizedBox(
                width: 25,
                child: IconButton(
                  onPressed: () {
                    Get.to(NotificationScreenAm());
                  },
                  icon: Icon(
                    Icons.notifications_none,
                    size: 25,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.to(Todo());
                },
                icon: Icon(
                  Icons.note_alt_outlined,
                  size: 22,
                ),
              ),
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
                                width:
                                    10), // Adjust spacing between image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Nihana",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  "Ambassador",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                ListTile(
                  leading:
                      Icon(Icons.sticky_note_2_outlined, color: Colors.black),
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
                  leading:
                      Icon(Icons.report_gmailerrorred, color: Colors.black),
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
                  leading:
                      Icon(Icons.model_training_sharp, color: Colors.black),
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
          body: body),
    );
  }
}
