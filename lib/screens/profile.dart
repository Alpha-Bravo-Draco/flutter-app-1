import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/textfield.dart';
import 'package:flutter_application_2/screens/verification.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                'Complete your Profile',
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
                'Give your information to make you a trusted user',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Image.asset(
                'assets/images/profile.png',
                width: 300,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomTextField(
                label: "Name", hintText: "Ex. Mark smith", obscureText: false),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                      height:
                          8.0), // Space between the label and the input field
                  IntlPhoneField(
                    decoration: InputDecoration(
                      counterText: "",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 213, 210, 210),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    initialCountryCode: 'PK',
                    onChanged: (phone) {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Verification()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                  255,
                  51,
                  49,
                  49,
                ),
                fixedSize: const Size(350, 60),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
