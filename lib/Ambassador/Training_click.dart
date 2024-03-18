import 'package:edge/Ambassador/About.dart';
import 'package:edge/Ambassador/Feedback.dart';
import 'package:edge/Ambassador/Result.dart';
import 'package:edge/Ambassador/Todo.dart';
import 'package:edge/Ambassador/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Trainingclick extends StatefulWidget {
  const Trainingclick({Key? key}) : super(key: key);

  @override
  State<Trainingclick> createState() => _TrainingclickState();
}

class _TrainingclickState extends State<Trainingclick> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Training',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 18,
            ),
          ),
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
        backgroundColor: const Color.fromARGB(255, 249, 245, 245),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Introduction to the telecalling training program',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_circle_outline,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: 'About'),
                        Tab(text: 'Result'),
                        Tab(text: 'Feedback'),
                      ],
                      labelColor: Colors.black,
                      dividerColor: Colors.white,
                      indicatorColor: Colors.black,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          About(),
                          Result(),
                          Feedbacks(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
