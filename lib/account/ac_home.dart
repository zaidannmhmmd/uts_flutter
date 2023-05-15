import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Account extends StatelessWidget {
  List<String> tags = [
    'Volleyball',
    'Programming',
    'Swimming',
    'Futsal',
    'Web Developer',
    'Teknik Informatika'
  ];
  Account({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZedApp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage("images/zaidan.jpg"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Muhammad Zaidan',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.verified,
                        size: 20,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '@zedboy.id',
                        style: TextStyle(fontSize: 15, color: Colors.black38),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Sebenarnya dunia itu memiliki banyak Keindahan',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Tetapi Kenapa setiap menatapmu keindahan itu pindah kekamu',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: const <Widget>[
                            Text(
                              '10 K',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Text(
                              'Mengikuti',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          children: const <Widget>[
                            Text(
                              '2.50 M',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Text(
                              'Pengikut',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          children: const <Widget>[
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Text(
                              'Postingan',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15, top: 25, left: 15),
                  height: 45,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tags.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueAccent),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              tags[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      }),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(
                      height: 120,
                    ),
                    Text('Tidak Ada Postingan')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
