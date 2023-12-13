import 'package:real_estate_app/Pages/add_apart_page.dart';
import 'package:real_estate_app/Pages/sign_up_page.dart';
import 'package:real_estate_app/main.dart';
import 'package:flutter/material.dart';


class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Kullanıcı Girişi'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Şifre'),
                obscureText: true,
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KullaniciKayit()),
                  );
                },
                child: Text('Üye Ol'),

              ),
              ElevatedButton(
                onPressed: () {
                  // Burada kullanıcı girişi kontrolü yapabilirsiniz.
                  String username = _usernameController.text;
                  String password = _passwordController.text;
                  if (username.isEmpty || password.isEmpty) {
                    _showAlertDialog('Lütfen tüm alanları doldurun.');
                  } else {
                    // Burada üye olma işlemini gerçekleştirebilirsiniz.
                    // Örneğin, yeni bir sayfaya yönlendirme yapabilirsiniz.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ApartEkle()),
                    );
                  }
                  // Örneğin, basit bir kontrol, kullanıcı adı ve şifreyi kontrol ediyoruz.
                  if (username == 'admin' && password == '1234') {
                    // Giriş başarılıysa, başka bir sayfaya yönlendirme yapabilirsiniz.
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ApartEkle()),
                    );
                  } else {
                    // Giriş başarısızsa, kullanıcıyı bilgilendirme.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Kullanıcı adı veya şifre hatali!'),
                      ),
                    );
                  }
                },
                child: Text('Giriş Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}