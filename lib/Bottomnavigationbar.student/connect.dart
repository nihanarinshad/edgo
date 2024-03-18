import 'package:flutter/material.dart';

class ConnectAmb extends StatelessWidget {
  const ConnectAmb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Connect Ambassador",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/image_circle_avathar.jpg')),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text("Job")
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green.shade800,
                      ),
                      padding: EdgeInsets.only(right: 14, left: 14, top: 2),
                      child: Text(
                        "Connect",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    border:
                        Border(left: BorderSide(color: Colors.blue, width: 5)),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I come from",
                  style: TextStyle(color: Colors.blue.shade600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Mumbai,India"),
                SizedBox(
                  height: 30,
                ),
                Text("I speak", style: TextStyle(color: Colors.blue.shade600)),
                SizedBox(
                  height: 10,
                ),
                Text("Hindi,English,Malayalam"),
                SizedBox(
                  height: 20,
                ),
                Text("I'm currently in",
                    style: TextStyle(color: Colors.blue.shade600)),
                SizedBox(
                  height: 10,
                ),
                Text("Undergraduate"),
                SizedBox(
                  height: 20,
                ),
                Text("Previous Studies",
                    style: TextStyle(color: Colors.blue.shade600)),
                SizedBox(
                  height: 10,
                ),
                Text("Saudi Arabia"),
                SizedBox(
                  height: 30,
                ),
                Text("About me", style: TextStyle(color: Colors.blue.shade600)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "About me Hi there! I'm Ahmed and I study Data Analyst at UOP! I really enjoy my course and living in this city - if you want to know what I enjoy most about it, message me and find out!"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
