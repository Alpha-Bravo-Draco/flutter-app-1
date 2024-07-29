// import 'package:flutter/material.dart';

// class CustomTextfield extends StatefulWidget {
//   final String labelText;
//   final String hintText;
//   final bool isPasswordField;
//   final bool initialObscureText;

//   const CustomTextfield({
//     Key? key,
//     required this.labelText,
//     required this.hintText,
//     required this.isPasswordField,
//     required this.initialObscureText,
//   }) : super(key: key);

//   @override
//   State<CustomTextfield> createState() => _CustomTextfieldState();
// }

// class _CustomTextfieldState extends State<CustomTextfield> {
//   late bool obscureText;

//   @override
//   void initState() {
//     super.initState();
//     obscureText = widget.initialObscureText; // Initialize obscureText
//   }

//   void toggleObscureText() {
//     setState(() {
//       obscureText = !obscureText; // Toggle obscureText value
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
//       child: Column(
//         children: [
//           TextFormField(
//             obscureText: widget.isPasswordField ? obscureText : false,
//             decoration: InputDecoration(
//               hintText: widget.hintText,
//               labelText: widget.labelText,
//               suffixIcon: widget.isPasswordField
//                   ? IconButton(
//                       icon: Icon(obscureText
//                           ? Icons.visibility
//                           : Icons.visibility_off),
//                       onPressed:
//                           toggleObscureText, // Toggle visibility on press
//                     )
//                   : null,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

// CustomTextField widget to make the TextFormField more reusable and good-looking
class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText,
              filled: true,
              fillColor: const Color.fromARGB(255, 213, 210, 210),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
