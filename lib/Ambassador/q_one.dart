import 'package:edge/Ambassador/Assessment_Result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QOne extends StatefulWidget {
  const QOne({Key? key}) : super(key: key);

  @override
  State<QOne> createState() => _QOneState();
}

class _QOneState extends State<QOne> {
  int selectedAvatarIndex = -1; // Initially no avatar is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'What is the primary objective of Telecalling?',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          _buildRow(0, 'A', 'Lead Generation '),
          _buildRow(1, 'B', 'Enrolling Students'),
          _buildRow(2, 'C', 'Providing Academics'),
          _buildRow(3, 'D', 'Conducting Webinar '),
          SizedBox(
            height: 150,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 20,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,

                    colors: [
                      Color.fromARGB(255, 1, 22, 39),
                      Color.fromARGB(255, 74, 138, 188),
                    ], // Define your gradient colors
                  ),
                ),
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                _showSubmitAlert();
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    border: Border.all(
                        width: 1, color: Color.fromARGB(255, 56, 147, 181))),
                child: Center(
                    child: Text(
                  'Submit Quiz',
                  style: TextStyle(color: Color.fromARGB(255, 28, 128, 164)),
                )),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 20,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,

                    colors: [
                      Color.fromARGB(255, 1, 22, 39),
                      Color.fromARGB(255, 74, 138, 188),
                    ], // Define your gradient colors
                  ),
                ),
                child: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            )
          ])
        ],
      ),
    );
  }

  Widget _buildRow(int index, String avatarText, String username) {
    bool isSelected = selectedAvatarIndex == index;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedAvatarIndex = index; // Update the selected index
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 1, 22, 39),
                              Color.fromARGB(255, 74, 138, 188),
                            ],
                          )
                        : null,
                    shape: BoxShape.circle,
                    color: isSelected
                        ? null
                        : Color.fromARGB(255, 241, 233,
                            233), // Set grey background if unselected
                  ),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundColor:
                        Colors.transparent, // Transparent background
                    child: Center(
                      child: Text(
                        avatarText,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: isSelected
                        ? Color.fromARGB(255, 4, 54, 92)
                        : Colors
                            .black, // Change username color based on selection
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showSubmitAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            icon: Icon(Icons.question_mark_sharp),
            content: Text("Are you sure you want to submit the quiz?"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      child: Center(child: Text("No")),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(AssesmentResult());
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      child: Center(child: Text("Yes")),
                    ),
                  ),
                ],
              )
            ]);
      },
    );
  }
}
