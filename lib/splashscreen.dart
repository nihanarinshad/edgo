import 'package:edge/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => LoginScreen());
      },
      child: Scaffold(
          body: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/raindrops.png'),
                  fit: BoxFit.cover)),
          child: Center(
              child: Text(
            "Edgo",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: 'WendyOne'),
          )),
        ),
      ])),
    );
  }
}
