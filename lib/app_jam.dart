import 'package:app_jam/ana_ekran.dart';

import 'package:app_jam/ekolojik_konaklama.dart';
import 'package:app_jam/surudurulebilir_mutfak.dart';
import 'package:app_jam/yesil_ulasim.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;

  const HomePage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.water_drop_outlined)],
        title: Center(child: Text('Hoş geldin ${name.toUpperCase()} ')),
      ),
      body: PageView(
        children: [
          AnaEkran(),
          YesilUlasimEkran(),
          EkolojikKonaklamaEkran(),
          SurdurulebilirMutfakEkran(),
        ],
      ),
    );
  }
}
