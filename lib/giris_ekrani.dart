import 'package:app_jam/app_jam.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = '';
  String _age = '';
  String? _selectedCity;
  List<String> _cities = ['Şehir Seçin', 'İstanbul', 'Ankara', 'İzmir', 'Bursa', 'Antalya'];

  void _submitForm() {
    print('Ad: $_name');
    print('Yaş: $_age');
    print('Şehir: $_selectedCity');

    if (_name.isNotEmpty && _age.isNotEmpty && _selectedCity!.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  name: _name,
                )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.water_drop_outlined)],
        title: Text('All will be green'),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/png/green.png'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Size arkadaşlarınız nasıl sesleniyor'),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Kaç yaşında hissediyorsunuz'),
                onChanged: (value) {
                  setState(() {
                    _age = value;
                  });
                },
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Daha yeşil olmasını istediğiniz şehri seçin'),
                value: _selectedCity,
                items: _cities.map((city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCity = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Giriş Yap'),
              ),
              Container(
                child: Image.asset(
                  'assets/png/waterdrop.png',
                ),
                height: MediaQuery.of(context).size.height * 0.3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
