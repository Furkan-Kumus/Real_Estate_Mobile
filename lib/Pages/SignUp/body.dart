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
  final _mailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  // @override
  // void dispose(){
  //   _usernameController.dispose();
  //   _mailController.dispose();
  //   _phoneNumberController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Üye Ol",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.01,
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
              controller: _mailController,
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
              press: () => AuthService().registerUser(username: _usernameController, email: _mailController, phoneNumber: _phoneNumberController, password: _passwordController),
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
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}




