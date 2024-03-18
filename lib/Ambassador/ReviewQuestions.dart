import 'package:edge/Ambassador/Review10quesions.dart';
import 'package:edge/Ambassador/ReviewQuestionsoptions.dart';
import 'package:edge/Ambassador/Todo.dart';
import 'package:edge/Ambassador/notification.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReviewQuestions extends StatefulWidget {
  const ReviewQuestions({Key? key}) : super(key: key);

  @override
  State<ReviewQuestions> createState() => _QuestionsState();
}

class _QuestionsState extends State<ReviewQuestions> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0; // Initialize the selected index
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Training',
            style: TextStyle(
              color: Colors.white,
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Introduction to the telecalling training program',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white, // Start color
                      Colors.white // Start color
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: DefaultTabController(
                  length: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      // Image.asset(
                      //     'assets/a0a4ea3c800f33ea85702c290ddbb428.png'),
                      // SvgPicture.asset('assets/line-l-svgrepo-com.svg'),
                      PreferredSize(
                        preferredSize: const Size.fromHeight(50),
                        child: TabBar(
                          isScrollable: true,
                          onTap: (index) {
                            setState(() {
                              _selectedIndex =
                                  index; // Update the selected index
                            });
                          },
                          tabs: const [
                            CustomTab(text: '1'),
                            CustomTab(text: '2'),
                            CustomTab(text: '3'),
                            CustomTab(text: '4'),
                            CustomTab(text: '5'),
                            CustomTab(text: '6'),
                            CustomTab(text: '7'),
                            CustomTab(text: '8'),
                            CustomTab(text: '9'),
                            CustomTab(text: '10'),
                          ],
                          labelColor: Colors.black,
                          indicatorColor: Color.fromARGB(255, 7, 60, 124),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQOne(),
                            ReviewQten(),
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
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String text;

  const CustomTab({required this.text});

  @override
  Widget build(BuildContext context) {
    final bool isSelected =
        DefaultTabController.of(context)!.index == int.parse(text) - 1;

    return Tab(
      child: CircleAvatar(
        backgroundColor: isSelected
            ? null // No background color if selected
            : const Color.fromARGB(
                255, 219, 211, 211), // Grey background if unselected
        radius: 20,
        child: isSelected
            ? Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 1, 22, 39),
                      Color.fromARGB(255, 74, 138, 188),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            : Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
      ),
    );
  }
}
