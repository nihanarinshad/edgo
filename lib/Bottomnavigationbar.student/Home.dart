import 'package:edge/Bottomnavigationbar.student/Enquiry.dart';
import 'package:edge/Bottomnavigationbar.student/chat.dart';
import 'package:edge/Bottomnavigationbar.student/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              key: _scaffoldKey,
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide.none), // Remove bottom line
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
                                          color:
                                              Color.fromARGB(255, 40, 4, 133),
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "Complete profile for better use",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 40, 4, 133),
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
                      // onTap: () {
                      //   // Add navigation functionality here
                      //   Get.off(Home());
                      // },
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
                      // onTap: () {
                      //   // Add navigation functionality here
                      //   Get.off(Home());
                      // },
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
              body: Stack(fit: StackFit.expand, children: [
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 14, 0, 50)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        Image(image: AssetImage('assets/Vector.png')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: IconButton(
                                  onPressed: () {
                                    _scaffoldKey.currentState!.openDrawer();
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.black,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: IconButton(
                                  onPressed: () {
                                    Get.to(NotificationScreen());
                                  },
                                  icon: Icon(
                                    Icons.notifications_none_rounded,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 55,
                          left: 20,
                          child: Stack(children: [
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 15),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage:
                                              AssetImage('assets/lady.png'),
                                        ),
                                        // Adjust spacing between image and text
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Ashad",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                              Text(
                                                "Complete profile for better use",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth:
                                                      10, // Adjust the width as needed
                                                  color: Colors.white,
                                                  value:
                                                      0.75, // Set the value to 0.75 for 75%
                                                ),
                                              ),
                                              Text(
                                                '75%',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ]),
                    ],
                  ),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Color.fromARGB(255, 248, 242, 242),
                      ),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Applied Universities',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Get.to(() => ChatScreen());
                                  },
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 2,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, left: 10, right: 10),
                                        child: Container(
                                          height: 150,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              left: BorderSide(
                                                color: index % 2 == 0
                                                    ? Color.fromARGB(
                                                        255, 92, 178, 248)
                                                    : Color.fromARGB(
                                                        255,
                                                        247,
                                                        101,
                                                        150), // Different border colors for even and odd indices
                                                width: 8.0,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 20),
                                              Row(
                                                children: [
                                                  SizedBox(width: 15),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: index % 2 == 0
                                                          ? Color.fromARGB(255,
                                                              218, 235, 253)
                                                          : const Color
                                                              .fromARGB(
                                                              255,
                                                              247,
                                                              192,
                                                              210), // Different colors for even and odd indices
                                                    ),
                                                    height: 35,
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 10),
                                                        child: Text(
                                                          'MBA Master of Business Administration',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: index % 2 ==
                                                                    0
                                                                ? Colors
                                                                    .lightBlue
                                                                : Colors
                                                                    .pink, // Text color for the container
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  SizedBox(width: 20),
                                                  Text(
                                                    'University of East London',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  SizedBox(width: 20),
                                                  Text('Intake : '),
                                                  Text('May '),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  SizedBox(width: 20),
                                                  Text(
                                                    'Status : ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    'Case Closed',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  )),
                            ],
                          ),
                        ],
                      ))
                ])
              ])),
        ));
  }
}
