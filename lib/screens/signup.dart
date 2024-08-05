import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/textfield.dart';
import 'package:flutter_application_2/screens/login.dart';
import 'package:flutter_application_2/screens/profile.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              label: 'Email',
              hintText: 'example@gmail.com',
              obscureText: false,
            ),
            const CustomTextField(
              label: 'Password',
              hintText: 'Enter your password',
              isPasswordField: true,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 0, 10),
                  child: Checkbox(
                    value: _isChecked,
                    onChanged: _toggleCheckbox,
                    activeColor: const Color.fromARGB(
                      255,
                      51,
                      49,
                      49,
                    ), // Color when the checkbox is checked
                    checkColor: Colors.white,
                  ),
                ),
                const Text("Agree with "),
                TextButton(
                  onPressed: () {},
                  child: const Text("Terms and Conditions"),
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: const Text(
                "Sign up",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                  255,
                  51,
                  49,
                  49,
                ),
                fixedSize: const Size(350, 60),
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 65, right: 10),
                  child: SizedBox(
                    width: 100, // Set the width of the left divider
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
                Text("Or Sign up with"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 100, // Set the width of the left divider
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageWithEllipse(
                  imagePath: 'assets/images/g10.png',
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                  onTap: () {},
                ),
                const SizedBox(width: 20),
                ImageWithEllipse(
                  imagePath: 'assets/images/Group.png',
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                  onTap: () {},
                ),
                const SizedBox(width: 10),
                ImageWithEllipse(
                  imagePath: 'assets/images/Group_18.png',
                  padding: const EdgeInsets.fromLTRB(20, 40, 10, 40),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text("Sign in"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWithEllipse extends StatelessWidget {
  final String imagePath;
  final EdgeInsets padding;
  final VoidCallback onTap; // Add this parameter for handling taps

  ImageWithEllipse({
    required this.imagePath,
    required this.padding,
    required this.onTap, // Initialize the parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GestureDetector(
        onTap: onTap, // Handle tap events
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromARGB(255, 231, 218, 218), // Border color
              width: 1, // Border width
            ),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 231, 218, 218).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ClipOval(
            child: Image.asset(
              imagePath, // Replace with your image asset
              width: 40,
              height: 40, // Original width and height of the image
            ),
          ),
        ),
      ),
    );
  }
}
