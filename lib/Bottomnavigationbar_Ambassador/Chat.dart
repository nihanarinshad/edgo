import 'dart:io';

import 'package:edge/Bottomnavigationbar.student/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemFour }

class AChatScreen extends StatefulWidget {
  @override
  _AChatScreenState createState() => _AChatScreenState();
}

class _AChatScreenState extends State<AChatScreen> {
  SampleItem? selectedItem;

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
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Fathima Nihana Kv',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
          ),
          actions: [
            PopupMenuButton<SampleItem>(
              initialValue: selectedItem,
              onSelected: (SampleItem item) {
                setState(() {
                  selectedItem = item;
                });
                _showDialog(item); // Call method to show dialog
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                const PopupMenuItem<SampleItem>(
                  value: SampleItem.itemOne,
                  child: Center(child: Text('Add Ambasador')),
                ),
                const PopupMenuDivider(), // Divider added here

                const PopupMenuItem<SampleItem>(
                  value: SampleItem.itemTwo,
                  child: Center(child: Text('Report Conversation')),
                ),
                const PopupMenuDivider(), // Divider added here

                const PopupMenuItem<SampleItem>(
                  value: SampleItem.itemThree,
                  child: Center(child: Text('Leave Conversation')),
                ),
                const PopupMenuDivider(), // Divider added here

                const PopupMenuItem<SampleItem>(
                  value: SampleItem.itemFour,
                  child: Center(child: Text('Close Conversation')),
                ),
              ],
            ),
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

  void _showDialog(SampleItem item) {
    String title = '';
    String content = '';
    Widget? additionalContent;

    TextStyle titleStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    switch (item) {
      case SampleItem.itemOne:
        title = 'Add Ambassador';
        additionalContent = Column(
          children: [
            Center(
              child: Container(
                width: 240,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
              ),
            ),
          ],
        );
        break;
      case SampleItem.itemTwo:
        title = 'Report Conversation';
        additionalContent = Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Center(
                child: Container(
                  width: 240,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 240,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  'Content',
                ),
              ),
            ),
          ],
        );
        break;
      case SampleItem.itemThree:
        title = 'Leave Conversation';
        content = 'You clicked on "Leave Conversation".';
        break;
      case SampleItem.itemFour:
        title = 'Close Conversation';
        content = 'You clicked on "Close Conversation".';
        break;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: titleStyle,
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(content),
              if (additionalContent != null) additionalContent,
            ],
          ),
          actions: <Widget>[
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(236, 74, 37, 1)),
                  child: Center(
                      child: Text(
                    'ADD',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ],
        );
      },
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
                    'assets/cool-dp-images10.jpg'), // Provide your own image asset path
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
