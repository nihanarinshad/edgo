import 'package:edge/Ambassador/Basescreen.dart';
import 'package:edge/Bottomnavigationbar_Ambassador/Chat.dart';
import 'package:edge/Bottomnavigationbar_Ambassador/Refferedcardclickview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dataList = [
      {
        "title": "Fathima Nihana Kv",
        "subtitle": "Can you give info..",
        "avatar": "assets/cool-dp-images10.jpg",
        "time": "10:00 AM", // Add time data
      },
      {
        "title": "Rinshad",
        "subtitle": "Can you give info.. ",
        "avatar": "assets/download (1).jpeg",
        "time": "11:30 AM", // Add time data
      },
      {
        "title": "Nifrah",
        "subtitle": "Can you give info..",
        "avatar": "assets/download (2).jpeg",
        "time": "01:45 PM", // Add time data
      },
      // Add more data as needed
    ];
    return ABaseScreen(
      appBarText: 'Chat',
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: GestureDetector(
              onTap: () {
                Get.to(AChatScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(dataList[index]['avatar']!),
                  ),
                  title: Text(
                    dataList[index]['title']!,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    dataList[index]['subtitle']!,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  trailing: Text(
                    dataList[index]['time']!, // Display time
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
