import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/Pages/LoginPages/rounded_button.dart';
import 'package:real_estate_app/Pages/LoginPages/rounded_input_field.dart';
import 'package:real_estate_app/Pages/LoginPages/rounded_password_field.dart';
import 'package:real_estate_app/Pages/SignUp/sign_up_page.dart';
import 'package:real_estate_app/services/auth_service.dart';
import 'already_have_an_account_check.dart';
import 'background.dart';

class Body extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                "Giriş Yap",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              'images/login/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              controller: _emailController,
              hintText: "Mail Adresinizi Giriniz",
              icon: Icons.person,
            ),
            RoundedPasswordField(
              controller: _passwordController ,
            ),
            RoundedButton(
              text: "Giriş Yap",
              press: () => AuthService().singIn(context, email: _emailController.text, password: _passwordController.text),
              color: Colors.deepPurpleAccent.withOpacity(0.8),
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ].reversed.toList(),
        ),
      ),
    );
  }
}
