import 'package:flutter/material.dart';

class NotificationScreenAm extends StatelessWidget {
  const NotificationScreenAm({super.key});

  @override
  Widget build(BuildContext context) {
    final Notificationss = ['latest'];
    String? notificationssview;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notification',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 241, 238, 238),
      // backgroundColor: Color.fromARGB(26, 61, 19, 198),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,

                      hintText: 'Latest',
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
                    items: Notificationss.map((e) => DropdownMenuItem(
                          child: Text(
                            e,
                          ),
                          value: e,
                        )).toList(),
                    onChanged: (val) {
                      notificationssview = val as String;
                    }),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // padding: EdgeInsets.only(right: 20),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(6),
                          onTap: () {},
                          title: Text(
                              "Stay alert at all times, alert to any opportunity for rest. Alert presence is the garden of personal growth.  "),
                          subtitle: Text(
                            "2 Minutes ago ",
                            style: TextStyle(fontSize: 10),
                          ),
                          leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/cool-dp-images10.jpg')),
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
