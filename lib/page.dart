import 'package:flutter_application_1/home/home.dart';
import 'package:flutter_application_1/account/ac_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/recomend/recom.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  // ignore: non_constant_identifier_names
  int IndexWidget = 0;

  void _onTap(int index) {
    setState(() {
      IndexWidget = index;
    });
  }

  List<Widget> pages = [
    // Page Home
    Home(),

    // Page Recomended
    HomeRecom(),

    // Page Account
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[IndexWidget],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        currentIndex: IndexWidget,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(IndexWidget == 0 ? Icons.home : Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(IndexWidget == 1
                ? Icons.video_camera_front
                : Icons.video_camera_front_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(IndexWidget == 2
                ? Icons.manage_accounts_rounded
                : Icons.manage_accounts_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
