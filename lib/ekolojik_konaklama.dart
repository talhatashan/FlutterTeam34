import "package:flutter/material.dart";

class EkolojikKonaklamaEkran extends StatelessWidget {
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
            title: Text('Ekolojik Konaklama'),
            subtitle:
                Text('Ekolojik otellerde, konaklama tesislerinde veya sürdürülebilir konaklama seçeneklerinde kalın.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Ekolojik Konaklama'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Çevre dostu konaklama seçenekleri, doğal kaynakları korumaya yardımcı olabilir.'),
                        SizedBox(height: 10),
                        Image.asset('assets/png/home.png'),
                        ElevatedButton(onPressed: () {}, child: Text('Ekolojik Otelleri Keşfet')),
                        ElevatedButton(onPressed: () {}, child: Text('Çadır Bul')),
                        ElevatedButton(onPressed: () {}, child: Text('Paylaşımlı Hostel Bul')),
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
