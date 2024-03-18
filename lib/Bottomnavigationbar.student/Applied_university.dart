import 'package:edge/Bottomnavigationbar.student/base_screen.dart';
import 'package:edge/Bottomnavigationbar.student/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Applieduniversity extends StatelessWidget {
  const Applieduniversity({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Lottie.asset('assets/Animation - 1708428244536.json'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search by University Name',
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(fontSize: 14),
                      border: InputBorder.none, // Remove underline
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  // Define a list of colors for border colors
                  List<Color> borderColors = [
                    Color.fromARGB(255, 155, 230, 249), // Example color 1
                    Colors.red, // Example color 2
                    Colors.green, // Example color 3
                    Colors.blue, // Example color 4
                    Colors.yellow, // Example color 5
                    Colors.orange, // Example color 6
                  ];

                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: borderColors[index %
                                borderColors.length], // Cycling through colors
                            width: 8.0,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 8),
                                child: Text('256788/23-24'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'MBA Master of Buisness Administration',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'University of East London',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('Intake : May',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 25,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(5),
                                      color: Color.fromARGB(255, 1, 4, 7)),
                                  child: Center(
                                      child: Text(
                                    'Status : Case on',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => ChatScreen());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color:
                                              Color.fromARGB(255, 3, 67, 131),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.comment,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            SizedBox(
                                                width:
                                                    5), // Adding some spacing between icon and text
                                            Text(
                                              'Comments',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        appBarText: 'Applied University');
  }
}
