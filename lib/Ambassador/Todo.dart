import 'package:edge/Ambassador/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<Task> _tasks = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              'Todo',
              style: TextStyle(
                color: Color.fromARGB(255, 251, 246, 246),
                fontSize: 18,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Get.to(NotificationScreenAm());
                },
                icon: Icon(
                  Icons.notifications_none,
                  size: 25,
                ),
              ),
            ]),
        backgroundColor: Color.fromARGB(255, 246, 237, 240),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildTask(_tasks[index], index),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _tasks.add(Task());
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          'New Task',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTask(Task task, int index) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Your text here',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        task.toggleStar();
                      });
                    },
                    child: Icon(
                      Icons.star,
                      color: task.starColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _tasks.removeAt(index);
                      });
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task {
  bool _isStarred = false;

  Color get starColor => _isStarred ? Colors.yellow : Colors.grey;

  void toggleStar() {
    _isStarred = !_isStarred;
  }
}
