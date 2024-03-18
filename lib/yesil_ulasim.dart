import "package:flutter/material.dart";

class YesilUlasimEkran extends StatelessWidget {
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
            title: Text('Yeşil Ulaşım'),
            subtitle: Text('Toplu taşıma, bisiklet veya elektrikli araçlar kullanın.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Yeşil Ulaşım'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            'Toplu taşıma, bisiklet veya elektrikli araçlar kullanarak karbon ayak izinizi azaltabilirsiniz.'),
                        SizedBox(height: 10),
                        Image.asset('assets/png/car.png'),
                        ElevatedButton(onPressed: () {}, child: Text('Bisiklet Kirala')),
                        ElevatedButton(onPressed: () {}, child: Text('Elektrikli Araç Kirala')),
                        ElevatedButton(onPressed: () {}, child: Text('Scooter Kirala')),
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
