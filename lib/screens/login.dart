import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/components/textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Checkbox state variable
  bool _isChecked = false;

  // Toggle the state of the checkbox
  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Center(
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 19, 18, 18),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Fill your information below or register\nwith your social account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const CustomTextField(
              label: 'Username',
              hintText: 'Enter your username',
              obscureText: false,
            ),
            const CustomTextField(
              label: 'Password',
              hintText: 'Enter your password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: _toggleCheckbox,
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            // You can add a button or other widgets here
          ],
        ),
      ),
    );
  }
}
