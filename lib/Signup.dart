import 'package:edge/otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/raindrops.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(140),
                child: Text(
                  "Edgo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'WendyOne'),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width:
                      MediaQuery.of(context).size.width, // 80% of screen width
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                          child: Text(
                        'Signup',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '  Mobile Number',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Mobile Number',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic),
                                fillColor: Color.fromRGBO(244, 242, 242, 1),
                                filled: true),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => OTPScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 60),
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: Color.fromARGB(255, 2, 40, 70)),
                            child: Center(
                              child: Text('Continue',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
