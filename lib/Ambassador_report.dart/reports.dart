import 'package:edge/Ambassador/Basescreen.dart';
import 'package:edge/Ambassador/Todo.dart';
import 'package:edge/Ambassador/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Reports extends StatefulWidget {
  @override
  State<Reports> createState() => _ReportState();
}

class _ReportState extends State<Reports> {
  final List<Map<String, dynamic>> cardData = [
    {
      "icon": Icons.access_alarm_sharp,
      "title": "Total Request accept",
      "subtitle": "100",
      "color": Colors.white
    },
    {
      'icon': Icons.workspace_premium_outlined,
      "title": "Referred Students",
      "subtitle": "29",
      "color": Colors.white
    },
    {
      "icon": Icons.request_page,
      "title": "Connect Request",
      "subtitle": "43",
      "color": Colors.white
    },
  ];
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ABaseScreen(
      appBarText: 'Report',
      body: Column(
        children: [
          SizedBox(
            height: 10,
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ambassador Activities',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                GestureDetector(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(10),
                        border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, top: 5, bottom: 5, right: 0),
                          child: Text(
                            _selectedDate != null
                                ? ' ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                : 'No date selected',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              _selectDate(context);
                            },
                            icon: Icon(Icons.calendar_month_sharp))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 160.0, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardData.length,
              itemBuilder: (BuildContext context, int index) {
                return CardWidget(
                  icon: cardData[index]["icon"],
                  title: cardData[index]["title"],
                  subtitle: cardData[index]["subtitle"],
                  color: cardData[index]["color"],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 5),
                child: Text(
                  'Training Completion',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2, // Only one item in the list
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      _showAlertDialog(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Introduction to Ambassador Training program',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Assessment attend',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '02 ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Latest Assessment Score',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '85% ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
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

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            Container(
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Assesment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text('Attended on',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                      Text('Score',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   1',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '         2024-05-29',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '89%',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   2',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '           2024-05-29',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '98%',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        color: Colors.orange,
                      ),
                      child: Center(child: Text('ok')),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
