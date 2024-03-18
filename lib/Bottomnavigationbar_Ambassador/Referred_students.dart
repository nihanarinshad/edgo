import 'package:edge/Ambassador/Basescreen.dart';
import 'package:edge/Bottomnavigationbar_Ambassador/Refferedcardclickview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReferredStudents extends StatelessWidget {
  const ReferredStudents({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dataList = [
      {
        "title": "Fathima Nihana Kv",
        "subtitle": "Calicut University",
        "avatar": "assets/cool-dp-images10.jpg",
      },
      {
        "title": "Rinshad",
        "subtitle": "Mumbai University ",
        "avatar": "assets/download (1).jpeg",
      },
      {
        "title": "Nifrah",
        "subtitle": "Mumbai UNiversity",
        "avatar": "assets/download (2).jpeg",
      },
      // Add more data as needed
    ];
    return ABaseScreen(
      appBarText: 'Referred Students',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12),
            child: Text(
              'Students',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(Cardclckview());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(dataList[index]['avatar']!),
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
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
