import 'package:flutter/material.dart';
import 'package:real_estate_app/services/add_apart_service.dart';

class ApartEkle extends StatefulWidget {
  const ApartEkle({super.key});

  @override
  State<ApartEkle> createState() => _ApartEkle();
}

class _ApartEkle extends State<ApartEkle> {
  TextEditingController _ilController = TextEditingController();
  TextEditingController _ilceController = TextEditingController();
  TextEditingController _mahalleController = TextEditingController();
  TextEditingController _metrekareController = TextEditingController();
  TextEditingController _fotografController = TextEditingController();
  String _odasayisi = 'Yok';
  String _kiralanmaSekliController = 'Yok';


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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apart Ekle'),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _ilController,
                decoration: InputDecoration(labelText: 'Il'),
              ),SizedBox(height: 16.0),
              TextField(
                controller: _ilceController,
                decoration: InputDecoration(labelText: 'Ilce'),
              ),SizedBox(height: 16.0),
              TextField(
                controller: _mahalleController,
                decoration: InputDecoration(labelText: 'Mahalle'),
              ),

              SizedBox(height: 16.0),
              DropdownButton<String>(
                value: _odasayisi,
                items: <String>['Yok', '1+0','1+1', '2+1', '3+1', '4+1']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _odasayisi = newValue!;
                  });
                },
              ),


              SizedBox(height: 16.0),
              DropdownButton<String>(
                value: _kiralanmaSekliController,
                items: <String>['Yok', 'Günlük','Aylık', 'Yıllık']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _kiralanmaSekliController= newValue!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _metrekareController,
                decoration: InputDecoration(labelText: 'Metrekare'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _fotografController,
                decoration: InputDecoration(labelText: 'Fotograf Url'),
              ),

              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {

                  if (_ilController.text.isEmpty || _ilceController.text.isEmpty || _mahalleController.text.isEmpty || _metrekareController.text.isEmpty || _fotografController.text.isEmpty) {
                    _showAlertDialog('Lütfen tüm alanları doldurun.');
                  }
                  else {
                    String currentUserId = AddService().getUserId();

                    AddService().AddApart(
                        userId: currentUserId,
                        il:  _ilController.text,
                        ilce: _ilceController.text,
                        mahalle: _mahalleController.text,
                        metrekare: _metrekareController.text,
                        odaSayi: _odasayisi,
                        kiraSuresi: _kiralanmaSekliController,
                        fotoUrl: _fotografController.text,
                    );
                  }

                },
                child: Text('Apart Ekle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}