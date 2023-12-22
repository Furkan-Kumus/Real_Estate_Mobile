import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/LoginPages/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final TextEditingController controller;
  const RoundedPasswordField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          obscureText: true,
          controller: controller,
          decoration: InputDecoration(
            hintText: "Şifrenizi Giriniz",
            icon: Icon(
                Icons.lock,
                color: Colors.deepPurpleAccent.withOpacity(0.8)
            ),
            suffixIcon: Icon(
                Icons.visibility,
                color: Colors.deepPurpleAccent.withOpacity(0.8)
            ),
            border: InputBorder.none,
          ),
        )
    );
  }
}
