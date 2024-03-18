import 'package:edge/Bottomnavigationbar.student/connect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0)),
                    width: 110,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Course"),
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0)),
                    width: 110,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("University"),
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0)),
                    width: 110,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Country"),
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 15),
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                        height: 90,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 0),
                            borderRadius: BorderRadius.circular(18)),
                        child: ListTile(
                          trailing: Container(
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.green.shade800,
                            ),
                            padding:
                                EdgeInsets.only(right: 14, left: 14, top: 2),
                            child: Text(
                              "Connect",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(6),
                          onTap: () {},
                          title: Text("Name $index"),
                          subtitle: Text("Job $index"),
                          leading: CircleAvatar(
                            radius: 30,
                          ),
                        ),
                      )))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.image,
          color: Colors.green[700],
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.green.shade700)),
      ),
    );
  }
}
