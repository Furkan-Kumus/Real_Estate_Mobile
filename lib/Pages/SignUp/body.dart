import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/Pages/LoginPages/login_page.dart';
import 'package:real_estate_app/Pages/SignUp/background.dart';
import 'package:real_estate_app/Pages/SignUp/social_icon.dart';
import 'package:real_estate_app/services/auth_service.dart';

import '../LoginPages/already_have_an_account_check.dart';
import '../LoginPages/rounded_button.dart';
import '../LoginPages/rounded_input_field.dart';
import '../LoginPages/rounded_password_field.dart';
import 'or_divider.dart';


class Body extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Background(
        child: ListView(
          shrinkWrap: true,
          reverse: true,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          children: <Widget>[
            SizedBox(
              height: size.height * 0.07,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Üye Ol",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SvgPicture.asset(
              'images/sign_up/signup.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.008,
            ),
            RoundedInputField(
              controller: _usernameController,
              hintText: "Adınızı Giriniz",
              icon: Icons.person,
            ),
            RoundedInputField(
              controller: _emailController,
              hintText: "Mail Adresinizi Giriniz",
              icon: Icons.mail,
            ),
            RoundedInputField(
              controller: _phoneNumberController,
              hintText: "Telefon Numaranızı Giriniz",
              icon: Icons.phone,
            ),
            RoundedPasswordField(
              controller: _passwordController,
            ),
            RoundedButton(
              text: "Üye Ol",
              press: () => AuthService().singUp(context, username: _usernameController.text.trim(), email: _emailController.text.trim(), phoneNumber: _phoneNumberController.text.trim(), password: _passwordController.text.trim()),
              color: Colors.deepPurpleAccent.withOpacity(0.8),
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "images/sign_up/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "images/sign_up/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "images/sign_up/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.12,
            ),
          ].reversed.toList(),
        ),
      ),
    );
  }
}




