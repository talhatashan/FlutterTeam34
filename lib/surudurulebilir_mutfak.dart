import "package:flutter/material.dart";

class SurdurulebilirMutfakEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/png/green.png'),
        fit: BoxFit.cover,
      )),
      child: ListView(
        children: [
          ListTile(
            title: Text('Sürdürülebilir Yerel Mutfak'),
            subtitle: Text(
                'Yerel olarak kaynaklanan, organik veya sürdürülebilir yiyecekler sunan restoranlarda yemek yiyin.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Sürdürülebilir Yerel Mutfak'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Sürdürülebilir mutfak, yerel çiftçileri destekler ve sağlıklı, yerel yiyecekler sunar.'),
                        SizedBox(height: 10),
                        Image.asset('assets/png/food.png'),
                        ElevatedButton(onPressed: () {}, child: Text('Yerel Restoranları Keşfet')),
                        ElevatedButton(onPressed: () {}, child: Text('Hayvan Dostlarınla Paylaş')),
                        ElevatedButton(onPressed: () {}, child: Text('Sürdürülebilir Tarıma Destek Ol')),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Kapat'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
