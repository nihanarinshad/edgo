import 'dart:io';

import 'package:edge/Bottomnavigationbar.student/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  File? _pickedImage;
  File? _pickedFile;

  List<ChatMessage> _messages = []; // List to store chat messages

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 15, 2, 70),
          centerTitle: true,
          title: Text(
            'Comments',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 19),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: IconButton(
                    onPressed: () {
                      Get.to(NotificationScreen());
                    },
                    icon: Icon(Icons.notifications_none_outlined)))
          ],
        ),
        backgroundColor: Color.fromARGB(255, 250, 245, 245),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _messages[index];
                },
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Send a message...',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.attach_file),
              onPressed: () => _showImagePickerBottomSheet(context),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                _sendMessage(); // Call a method to send the message
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedImage = File(pickedFile.path);
      });
    } else {
      print('No image selected.');
    }
  }

  void _showImagePickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.photo,
                  color: Colors.red,
                ),
                title: Text('Pick from Gallery'),
                onTap: () {
                  _pickImageFromGallery();
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.file_copy,
                  color: Colors.blue,
                ),
                title: Text('Pick a File'),
                onTap: () {
                  _pickFile();
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _pickedFile = File(result.files.single.path!);
      });
    } else {
      print('No file selected.');
    }
  }

  void _sendMessage() {
    String messageText = _textController.text.trim();
    if (messageText.isNotEmpty || _pickedImage != null || _pickedFile != null) {
      // Reset text input field
      _textController.clear();

      // Create a new chat message
      ChatMessage newMessage = ChatMessage(
        text: messageText,
        image: _pickedImage,
        file: _pickedFile,
        time: DateTime.now(),
        isMe: true, // Mark the message as sent by the current user
      );

      // Add the new message to the list of messages
      setState(() {
        _messages.add(newMessage);
        _pickedImage = null; // Reset picked image after sending
        _pickedFile = null; // Reset picked file after sending
      });
    }
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final File? image;
  final File? file;
  final DateTime time;
  final bool isMe; // Indicates if the message is sent by the current user

  ChatMessage({
    required this.text,
    this.image,
    this.file,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isMe) // Display avatar on the right side if message is sent by the current user
            Container(
              padding: EdgeInsets.only(left: 100),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/baby.jpg'), // Provide your own image asset path
                radius: 20, // Adjust the radius as needed
              ),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200, // Set the width of the message container
                  child: Container(
                    decoration: BoxDecoration(
                      color: isMe
                          ? Color.fromARGB(255, 252, 254, 255)
                          : Color(0xFFF9F7F7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isMe ? 16.0 : 0),
                        topRight: Radius.circular(isMe ? 0 : 16.0),
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (text.isNotEmpty)
                          Text(
                            text,
                            style: TextStyle(fontSize: 16),
                          ),
                        if (image != null) // Display picked image
                          Container(
                            height: 200,
                            width: 200,
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        if (file != null) // Display picked file
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'File:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  file!.path,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        SizedBox(height: 4.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${time.hour}:${time.minute}', // Display time
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              '${time.day}/${time.month}/${time.year}', // Display date
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
