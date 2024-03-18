import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key});

  @override
  Widget build(BuildContext context) {
    // Sample list of result entries
    List<Map<String, String>> resultEntries = [
      {'date': '12/03/2024', 'score': '70/100'},
      {'date': '12/03/2024', 'score': '60/100'},
      {'date': '12/03/2024', 'score': '100/100'},

      // Add more result entries as needed
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 243, 243),
      body: ListView.builder(
        itemCount: resultEntries.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Text(
                  resultEntries[index]['date']!,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  resultEntries[index]['score']!,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
