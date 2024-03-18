import 'package:edge/Home/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late List<String> otpDigits;
  late List<TextEditingController> controllers;

  @override
  void initState() {
    super.initState();
    otpDigits = List.generate(4, (index) => '');
    controllers = List.generate(4, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void verifyOTP() {
    String enteredOTP = otpDigits.join();
    // In a real app, you would compare the enteredOTP with the OTP sent to the user
    // If they match, then the verification is successful
    // You might also want to handle error cases, invalid OTP, etc.
    if (enteredOTP == '1234') {
      // Navigate to the next screen or perform any desired action
      print('OTP Verified Successfully');
    } else {
      print('Invalid OTP');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (controllers == null) {
      // Return a loading indicator or an empty container while controllers are being initialized
      return CircularProgressIndicator(); // Example loading indicator
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/raindrops.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(140),
              child: Text(
                "Edgo",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'WendyOne'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
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
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Text(
                            'We have send an OTP verification to this number '),
                        SizedBox(height: 20),
                        Text('+91 9048402571')
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '    Enter OTP',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                        (index) => Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: controllers[index],
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                otpDigits[index] = value;
                              });
                              // Move focus to the next input field
                              if (index < controllers.length - 1 &&
                                  value.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Resend Code in 00:01',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => bottomnavigation());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 2, 40, 70),
                          ),
                          child: Center(
                            child: Text(
                              'Verify OTP',
                              style: TextStyle(color: Colors.white),
                            ),
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
    );
  }
}
