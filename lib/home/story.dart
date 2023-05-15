import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blueAccent,
            child: CircleAvatar(
              radius: 27,
              backgroundImage:
                  NetworkImage('https://picsum.photos/200/300?random=$name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
