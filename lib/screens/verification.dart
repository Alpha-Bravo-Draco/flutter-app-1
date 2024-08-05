import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/location.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                'Verify Code',
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
                'Please enter the code we just sent you to email\nexample@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              child: Image.asset(
                'assets/images/g9.png',
                width: 250,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Otp(),
                  const SizedBox(
                    width: 10,
                  ),
                  Otp(),
                  const SizedBox(
                    width: 10,
                  ),
                  Otp(),
                  const SizedBox(
                    width: 10,
                  ),
                  Otp(),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Didn't recieve the OTP?",
              style: TextStyle(fontSize: 16),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Resend Code",
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Location()));
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
                "Verify",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox Otp() {
    return SizedBox(
      width: 70,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: const Color.fromARGB(255, 205, 199, 199),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
