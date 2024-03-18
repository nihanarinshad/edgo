import 'package:edge/Bottomnavigationbar_Ambassador/Referred_students.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cardclckview extends StatefulWidget {
  const Cardclckview({super.key});

  @override
  State<Cardclckview> createState() => _CardclckviewState();
}

class _CardclckviewState extends State<Cardclckview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Referred Students',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.to(ReferredStudents());
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 253, 246, 246),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border(
                      left: BorderSide(
                          color: const Color.fromARGB(255, 3, 34, 88),
                          width: 5))),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/cool-dp-images10.jpg'),
                ),
                title: Text(
                  "Fathima Nihana Kv",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  "Calicut University",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    left: BorderSide(
                        color: const Color.fromARGB(255, 3, 34, 88), width: 5)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0), // Circular border on the left
                  bottomLeft: Radius.circular(15.0),
                  topRight: Radius.zero, // Square border on the right
                  bottomRight: Radius.zero,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text('fathimanihanakv@gmail.com',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text('21',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text('Female',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Student ID',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text('324566',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Course',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text("Bachelors of Computer Application(BCA)",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'University',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text('Calicut University',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
