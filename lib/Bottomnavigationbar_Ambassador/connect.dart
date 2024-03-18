import 'package:edge/Ambassador/Basescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class AConnect extends StatelessWidget {
  const AConnect({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dataList = [
      {
        "title": "Fathima Nihana Kv",
        "subtitle": "BCA|Calicut University",
        "avatar": "assets/cool-dp-images10.jpg",
      },
      {
        "title": "Rinshad",
        "subtitle": "CS|Mumbai University ",
        "avatar": "assets/download (1).jpeg",
      },
      {
        "title": "Nifrah",
        "subtitle": "MBBS|Mumbai UNiversity",
        "avatar": "assets/download (2).jpeg",
      },
      // Add more data as needed
    ];
    return ABaseScreen(
      appBarText: 'Connect Request',
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Slidable(
              startActionPane: ActionPane(motion: ScrollMotion(), children: [
                SlidableAction(
                  backgroundColor: Color.fromARGB(255, 24, 107, 11),
                  borderRadius: BorderRadius.circular(0),
                  onPressed: (context) {},
                  icon: Icons.done,
                )
              ]),
              endActionPane: ActionPane(motion: ScrollMotion(), children: [
                SlidableAction(
                  backgroundColor: Colors.red,
                  borderRadius: BorderRadius.circular(0),
                  onPressed: (context) {},
                  icon: Icons.close,
                )
              ]),
              child: GestureDetector(
                onTap: () {
                  _showAlertDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
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

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
              child: Text(
            'Fathima Nihana Kv',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )),
          content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Email : fathimanihanakv@gmail.com',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                Text(
                  'Gender: Female',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  'Age   :21',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 160,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Color.fromARGB(255, 247, 103, 55)),
                  child: Center(
                      child: Text(
                    'OK',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
