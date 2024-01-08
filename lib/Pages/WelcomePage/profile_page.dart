import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/WelcomePage/body.dart';


class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {

  void _showAlertDialog(String message) {
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text('Uyarı'),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Tamam'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(),);
  }

}