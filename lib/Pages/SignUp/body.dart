import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/Pages/LoginPages/login_page.dart';
import 'package:real_estate_app/Pages/SignUp/background.dart';
import 'package:real_estate_app/Pages/SignUp/social_icon.dart';
import 'package:real_estate_app/constants.dart';

import '../LoginPages/already_have_an_account_check.dart';
import '../LoginPages/rounded_button.dart';
import '../LoginPages/rounded_input_field.dart';
import '../LoginPages/rounded_password_field.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

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
              hintText: "Adınızı Giriniz",
              onChanged: (value) {},
              icon: Icons.person,
            ),
            RoundedInputField(
              hintText: "Mail Adresinizi Giriniz",
              onChanged: (value) {},
              icon: Icons.mail,
            ),
            RoundedInputField(
              hintText: "Telefon Numaranızı Giriniz",
              onChanged: (value) {}, icon: Icons.phone,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Üye Ol",
              press: () {},
              color: Colors.deepPurpleAccent.withOpacity(0.8),
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
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




