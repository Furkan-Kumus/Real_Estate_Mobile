import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/LoginPages/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
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
