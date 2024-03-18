import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Password',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangePasswordPage(),
    );
  }
}

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isObscure = true;
  bool _isObscures = true;

  void _submitForm() {
    final FormState? form = _formKey.currentState;
    if (form != null && form.validate()) {
      // Perform password change logic here, such as sending a request to the server
      String oldPassword = _oldPasswordController.text;
      String newPassword = _newPasswordController.text;
      String confirmPassword = _confirmPasswordController.text;

      // Here, you can implement your logic to verify and change the password
      if (newPassword == confirmPassword) {
        // Passwords match, proceed with changing the password
        print('Old Password: $oldPassword');
        print('New Password: $newPassword');
        print('Confirm Password: $confirmPassword');

        // Add logic here to handle password change, e.g., API call, database update, etc.
      } else {
        // Passwords don't match
        print('Passwords do not match');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Change Password',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 251, 245, 245),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  controller: _oldPasswordController,
                  decoration: InputDecoration(
                    hintText: '   Old Password',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your old password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  controller: _newPasswordController,
                  decoration: InputDecoration(
                    hintText: '  New Password',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your new password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                    hintText: '  Confirm New Password',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscures
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscures = !_isObscures;
                        });
                      },
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: false,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your new password';
                    } else if (value != _newPasswordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: _submitForm,
                child: Text('Change Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
