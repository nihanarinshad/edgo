import 'package:edge/Ambassador/Todo.dart';
import 'package:edge/Ambassador/notification.dart';
import 'package:edge/Ambassador/questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Startquiz extends StatefulWidget {
  const Startquiz({super.key});

  @override
  State<Startquiz> createState() => _StartquizState();
}

class _StartquizState extends State<Startquiz> {
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
            backgroundColor: Color.fromARGB(255, 221, 216, 216),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Introduction to the Telecalling training program',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            '______',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Text('Brief explanation about this quiz',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.question_mark_outlined,
                                  color: Colors.white,
                                ), // Add your avatar image here
                              ),
                              SizedBox(
                                  width:
                                      10), // Adjust spacing between image and text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "10 Questions",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  Text(
                                    "10 point for a correct answer",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.alarm_outlined,
                                  color: Colors.white,
                                ), // Add your avatar image here
                              ),
                              SizedBox(
                                  width:
                                      10), // Adjust spacing between image and text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "No time limit",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  Text(
                                    "Total Duration of quiz",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Text('Read the following instructions',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              Text(
                                  'Each team will be asked 2 questions of 10 marks each. They will be given 30 seconds for each question. If the allotted team is unable to answer the question then the question will passed on to the subsequent teams. Subsequent teams will be given 15 seconds to answer & will be awarded 5 marks for each correct answer.',
                                  style: TextStyle(
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              Text(
                                  'A quiz refers to a short test of knowledge, typically around 10 questions in length, with question formats often including multiple choice, fill in the blanks, true or false and short answer. A quiz is much shorter than a traditional test or exam and is rarely impactful on a final course grade.',
                                  style: TextStyle(
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(Questions());
                                },
                                child: Container(
                                  height: 35,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Start ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
