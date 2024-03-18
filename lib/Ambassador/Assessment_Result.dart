import 'package:edge/Ambassador/ReviewQuestions.dart';
import 'package:edge/Ambassador/Todo.dart';
import 'package:edge/Ambassador/Training_click.dart';
import 'package:edge/Ambassador/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AssesmentResult extends StatefulWidget {
  const AssesmentResult({Key? key}) : super(key: key);

  @override
  State<AssesmentResult> createState() => _AssesmentResultState();
}

class _AssesmentResultState extends State<AssesmentResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Training',
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
        backgroundColor: const Color.fromARGB(255, 249, 245, 245),
        body: Stack(
          children: [
            Image.asset(
              'assets/a0a4ea3c800f33ea85702c290ddbb428.png',
              height: 400,
              width: 400,
            ),
            Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: Text(
                      'Assesment Result',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    '80%',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Text(
                    'Congratulations',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
                  Center(
                      child: Text(
                    'You Have Answered',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '8/10 ',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        'Question Correctly  ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(ReviewQuestions());
                        },
                        child: Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              'Review Exam ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(Trainingclick());
                      },
                      child: Text(
                        'Wrap Up Exam',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
