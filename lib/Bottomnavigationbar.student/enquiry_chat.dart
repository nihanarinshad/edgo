import 'package:edge/Bottomnavigationbar.student/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EnquiryChatScreen extends StatefulWidget {
  const EnquiryChatScreen({Key? key});

  @override
  State<EnquiryChatScreen> createState() => _EnquryChatScreenState();
}

class _EnquryChatScreenState extends State<EnquiryChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<ChatMessage> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Support'),
        backgroundColor: Color.fromARGB(255, 20, 3, 75),
        foregroundColor: Colors.white,
        // leading: IconButton(
        //     onPressed: () {
        //       Get.to(Home());
        //     },
        //     icon: Icon(
        //       Icons.arrow_back_ios_sharp,
        //       color: Colors.222222222222white,
        //     )),
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
      backgroundColor: Color.fromRGBO(248, 244, 244, 1),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _messages[index];
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(bottom: 10, left: 10, top: 10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Write a Comment',
                hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                      color: Colors
                          .transparent), // Set enabled border color to transparent
                ),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors
                          .transparent), // Set focused border color to transparent
                ),
              ),
              controller: _messageController,
            ),
          ),
          IconButton(
              onPressed: () {
                _sendMessage(isUser: true);
              },
              icon: Icon(Icons.send_outlined)),
        ],
      ),
    );
  }

  void _sendMessage({required bool isUser}) {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(
          text: _messageController.text,
          isUser: isUser,
          dateTime: DateTime.now(),
        ));
        _messageController.clear();
      });
    }
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;
  final DateTime dateTime;

  const ChatMessage(
      {required this.text, required this.isUser, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Row(
            mainAxisAlignment:
                isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/lady.png'), // Add your avatar image here
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 11.0),
                alignment:
                    isUser ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: isUser ? Colors.white : Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                '${DateFormat.yMd().add_jm().format(dateTime)}',
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
                mainAxisAlignment:
                    isUser ? MainAxisAlignment.start : MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/baby.jpg'), // Add your avatar image here
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    alignment:
                        isUser ? Alignment.centerLeft : Alignment.centerLeft,
                    child: Container(
                      height: 100,
                      width: 200,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.white : Colors.green,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        text,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    '${DateFormat.yMd().add_jm().format(dateTime)}',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
