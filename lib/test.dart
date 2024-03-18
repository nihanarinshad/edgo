import 'package:flutter/material.dart';

class OTPInput extends StatefulWidget {
  final Function(String) onChanged;

  const OTPInput({Key? key, required this.onChanged}) : super(key: key);

  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(4, (index) => FocusNode());
    _controllers = List.generate(4, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _controllers[index],
            keyboardType: TextInputType.number,
            maxLength: 1,
            textAlign: TextAlign.center,
            focusNode: _focusNodes[index],
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < 3) {
                  FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                } else {
                  _focusNodes[index].unfocus();
                }
                widget.onChanged(
                    _controllers.map((controller) => controller.text).join());
              }
            },
            decoration: InputDecoration(
              counterText: "",
              border: InputBorder.none,
            ),
          ),
        );
      }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('OTP Input Example'),
      ),
      body: Center(
        child: OTPInput(
          onChanged: (value) {
            print('OTP Entered: $value');
            // Add your logic for handling the entered OTP
          },
        ),
      ),
    ),
  ));
}
