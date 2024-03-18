import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Works extends StatefulWidget {
  const Works({super.key});

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  var isExpanded = false;
  late int indexValuess = 0;
  final Education = ['10000', '20000', '30000'];
  String? HighestLevelOfEducation;
  late List<bool> isExpandedList = [false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 241, 241),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < isExpandedList.length; i++)
              _buildExpansionTile(i),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: isExpandedList.length < 5, // Limit the number of tiles to 5
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              isExpandedList.add(false); // Set initial expansion state
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  ExpansionTile _buildExpansionTile(int index) {
    return ExpansionTile(
      title: Text('Work Experience',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
      // null if expanded, will using default arrow
      trailing: isExpandedList[index] ? Icon(Icons.remove) : Icon(Icons.add),
      children: <Widget>[
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '  Name of the Organisation & Address',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Name of the Organisation & Address',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '   Position',
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Position',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '   Job Profile*',
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Job Profile',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '   Working From*',
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'DD/MM/YY',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '  Working Upto*',
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        border: Border.all(color: Colors.black),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'DD/MM/YY',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '   Mode of Salary',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,

                    hintText: 'Select Highest Level Of Education',
                    helperStyle: TextStyle(fontSize: 12),
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
                  items: Education.map((e) => DropdownMenuItem(
                        child: Text(
                          e,
                        ),
                        value: e,
                      )).toList(),
                  onChanged: (val) {
                    HighestLevelOfEducation = val as String;
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('   Iam Corrently working here*'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                ToggleSwitch(
                  minWidth: 80.0,
                  cornerRadius: 10.0,
                  activeBgColors: [
                    [Color.fromARGB(255, 2, 1, 70)],
                    [Color.fromARGB(255, 2, 1, 70)],
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  initialLabelIndex: indexValuess,
                  totalSwitches: 2,
                  labels: ['No', 'YES'],
                  radiusStyle: true,
                  onToggle: (index) {
                    indexValuess = index!;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Color.fromARGB(255, 23, 8, 107),
              ),
              child: Center(
                  child: Text(
                'Cancel',
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Color.fromARGB(255, 23, 8, 107),
              ),
              child: Center(
                  child: Text(
                'Save ',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
        ]),
      ],
      onExpansionChanged: (bool expanded) {
        setState(() {
          isExpandedList[index] = expanded;
        });
      },
    );
  }
}
