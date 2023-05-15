import 'package:flutter_application_1/home/story.dart';
import 'package:flutter_application_1/home/user.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List users = [
    'zaidan',
    'wulandari',
    'eka_rahma',
    'maretta',
    'anzelina',
    'saputri',
    'manhwa',
    'nishida',
    'octavia'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ZedApp',
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.mark_email_unread_outlined,
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
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Story(
                    name: users[index],
                  );
                },
                itemCount: users.length,
              ),
            ),
            const Divider(
              height: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return User(name: users[index]);
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
