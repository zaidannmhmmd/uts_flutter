import 'package:flutter_application_1/recomend/rc_user.dart';
import 'package:flutter/material.dart';

class HomeRecom extends StatelessWidget {
  HomeRecom({super.key});

  final List users = [
    'Nikita Willy',
    'Arman Azam',
    'carayolu',
    'Iben',
    'Ganjar Pranowo',
    'Denu Mikho',
    'Darren Dion',
    'Gustian REKT',
    'vilmei',
    'Luan Luan',
    'Gema Bawana Tanseki',
    'Juan Cruz',
    'Rhea',
    'Altezza',
    'Suara Ibra',
    'Bang Adi',
    'Sobat jajan Samarinda',
    'Ahi Tech'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Rekomendasi',
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.published_with_changes_outlined,
                size: 25,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(
              height: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Recom(name: users[index]);
                },
                itemCount: users.length,
              ),
            ),
            const SizedBox(
              width: 30,
            )
          ],
        ));
  }
}
