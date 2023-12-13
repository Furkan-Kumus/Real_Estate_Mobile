import 'package:real_estate_app/Pages/profile_page.dart';
import 'package:flutter/material.dart';


class KullaniciKayit extends StatefulWidget {
  const KullaniciKayit({super.key});

  @override
  State<KullaniciKayit> createState() => _ProfilState();
}

class _ProfilState extends State<KullaniciKayit> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _showAlertDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
    );}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Üye Ol'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Adı'),
              ),SizedBox(height: 16.0),
              TextField(
                controller: _surnameController,
                decoration: InputDecoration(labelText: 'Soyadı'),
              ),SizedBox(height: 16.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-posta'),
                keyboardType: TextInputType.emailAddress,
              ), SizedBox(height: 16.0),
              TextField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Telefon'),
                keyboardType: TextInputType.phone,
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

                  // Burada üye olma işlemini gerçekleştirebilirsiniz.
                  String name=_nameController.text;
                  String surname=_surnameController.text;
                  String username = _usernameController.text;
                  String email = _emailController.text;
                  String phone = _phoneController.text;
                  String password = _passwordController.text;
                  if (name.isEmpty||surname.isEmpty||username.isEmpty || email.isEmpty ||phone.isEmpty|| password.isEmpty) {
                    _showAlertDialog('Lütfen tüm alanları doldurun.');
                  } else {
                    // Burada üye olma işlemini gerçekleştirebilirsiniz.
                    // Örneğin, yeni bir sayfaya yönlendirme yapabilirsiniz.
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Profil()),
                    );
                  }
                  // Örnek olarak, üyelik bilgilerini ekrana yazdırıyoruz.
                  print('Adı: $name');
                  print('Soyadı: $surname');
                  print('Kullanıcı Adı: $username');
                  print('E-posta: $email');
                  print('Telefon: $phone');
                  print('Şifre: $password');
                },
                child: Text('Üye Ol'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
