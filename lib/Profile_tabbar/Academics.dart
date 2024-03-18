import 'package:flutter/material.dart';

class Academics extends StatefulWidget {
  const Academics({super.key});

  @override
  State<Academics> createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  final Education = ['Undergraduate', 'Grade 12th', 'Grade 10th'];
  String? HighestLevelOfEducation;
  bool showUndergraduate = false;
  bool showPlustwo = false;
  bool showSslc = false;
  String? _selectedEducation;

  Widget Undergraduate() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('   Undergraduate',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 1, 25, 45))),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '   College Name',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'College',
                      hintStyle: TextStyle(fontSize: 14),
                      border: InputBorder.none, // Remove underline
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '   Location',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Location',
                      hintStyle: TextStyle(fontSize: 14),
                      border: InputBorder.none, // Remove underline
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '   Attended From',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '2020-2023',
                        hintStyle: TextStyle(fontSize: 14),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.date_range) // Remove underline
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Column(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('   Grade 12th',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 25, 45))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Board Name',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Board Name',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none, // Remove underline
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   School Name',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'School Name',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none, // Remove underline
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Location',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Location',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none, // Remove underline
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Attended From',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '2020-2023',
                              hintStyle: TextStyle(fontSize: 14),
                              border: InputBorder.none,
                              suffixIcon:
                                  Icon(Icons.date_range) // Remove underline
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(children: [
          Visibility(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('   Grade 10th',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 25, 45))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Board Name',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Board Name',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none, // Remove underline
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   School Name',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'School Name',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none, // Remove underline
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Location',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Location',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none, // Remove underline
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Attended From',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '2020-2023',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none,
                            suffixIcon:
                                Icon(Icons.date_range) // Remove underline
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ]))
        ])
      ])
    ]);
  }

  Widget plustwo() {
    return Column(children: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('   Grade 12th',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 1, 25, 45))),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Board Name',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Board Name',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none, // Remove underline
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   School Name',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'School Name',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none, // Remove underline
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Location',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Location',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none, // Remove underline
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Attended From',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '2020-2023',
                            hintStyle: TextStyle(fontSize: 14),
                            border: InputBorder.none,
                            suffixIcon:
                                Icon(Icons.date_range) // Remove underline
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Column(children: [
        Visibility(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('   Grade 10th',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 1, 25, 45))),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Board Name',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Board Name',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none, // Remove underline
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   School Name',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'School Name',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none, // Remove underline
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Location',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Location',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none, // Remove underline
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '   Attended From',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: '2020-2023',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.date_range) // Remove underline
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ))
        ]))
      ])
    ]);
  }

  Widget Sslc() {
    return Column(children: [
      Visibility(
          child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('   Grade 10th',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 1, 25, 45))),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '   Board Name',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Board Name',
                        hintStyle: TextStyle(fontSize: 14),
                        border: InputBorder.none, // Remove underline
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '   School Name',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'School Name',
                        hintStyle: TextStyle(fontSize: 14),
                        border: InputBorder.none, // Remove underline
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '   Location',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Location',
                        hintStyle: TextStyle(fontSize: 14),
                        border: InputBorder.none, // Remove underline
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '   Attended From',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '2020-2023',
                        hintStyle: TextStyle(fontSize: 14),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.date_range) // Remove underline
                        ),
                  ),
                ),
              ),
            ),
          ],
        ))
      ]))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 241, 241),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('   Education Summary',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Country',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Country',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none, // Remove underline
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '   Highest Level Of Education',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: DropdownButtonFormField<String>(
                    value: _selectedEducation,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedEducation = newValue;
                        if (_selectedEducation == 'Graduated') {
                          Undergraduate();
                        }
                        if (_selectedEducation == 'PLustwo') {
                          plustwo();
                        }
                        if (_selectedEducation == 'SSLC') {
                          Sslc();
                        }
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _selectedEducation = value;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,

                      hintText: 'Select Highest Level Of Education',
                      hintStyle: TextStyle(fontSize: 13),
                      // labelStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2), // Set focused border color
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    items: <String>['Graduated', 'PLustwo', 'SSLC']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                if (_selectedEducation == 'Graduated') Undergraduate(),
                if (_selectedEducation == 'PLustwo') plustwo(),
                if (_selectedEducation == 'SSLC') Sslc(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Color.fromARGB(255, 7, 1, 42),
              ),
              child: Center(
                  child: Text(
                'Save Changes',
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ])));
  }
}
