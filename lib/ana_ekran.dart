import 'package:flutter/material.dart';

class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ALL GREEN',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text('Etrafında birkaç yeşil seçenek görüyorum'),
          Text('Daha yesil bir gelecek icin saga kaydırmaya başla...'),
        ],
      ),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/png/green.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}
