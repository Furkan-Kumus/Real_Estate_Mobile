import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/LoginPages/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;

   const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.deepPurpleAccent.withOpacity(0.8),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
