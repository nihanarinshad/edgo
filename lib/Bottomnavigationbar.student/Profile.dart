import 'dart:io';

import 'package:edge/Bottomnavigationbar.student/base_screen.dart';
import 'package:edge/Bottomnavigationbar.student/notification.dart';
import 'package:edge/Home/profile_tababar.dart';
import 'package:edge/Signup.dart';
import 'package:edge/Student/changepassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Center(
                  child: ListTile(
                      leading: CircleAvatar(
                        child: _image == null
                            ? CircleAvatar(
                                child: Icon(Icons.add_a_photo),
                              )
                            : CircleAvatar(
                                backgroundImage: FileImage(_image!),
                              ),
                        // Add your avatar image here
                      ),
                      // Adding some space between avatar and text
                      title: Text(
                        "Ashad",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      trailing: IconButton(
                          onPressed: getImage,
                          tooltip: 'Pick Image',
                          icon: Icon(Icons.edit_square))),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '     Account',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 56, 54, 54)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 13),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      Icons.markunread_outlined,
                    ),
                    SizedBox(width: 5), // Add some space between icon and text
                    Text(
                      'ashad@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      Icons.call,
                    ),
                    SizedBox(width: 5), // Add some space between icon and text
                    Text(
                      '9048402563',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(Profiletabbar());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.person,
                      ),
                      SizedBox(
                          width: 5), // Add some space between icon and text
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      Icons.file_copy_outlined,
                    ),
                    SizedBox(width: 5), // Add some space between icon and text
                    Text(
                      'Document',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(ChangePasswordPage());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 60),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: Center(
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 1, 27, 49)),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(Signup());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: Center(
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 1, 27, 49)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        appBarText: 'Profile');
  }
}
