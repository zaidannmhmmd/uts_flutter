import 'package:flutter/material.dart';

class Recom extends StatelessWidget {
  const Recom({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blueAccent,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/200/300?random=$name'),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18, left: 18),
          child: Image.network(
            'https://picsum.photos/600/500?random=$name',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(children: const [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.black54,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "25",
              selectionColor: Colors.black54,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.comment_outlined,
              color: Colors.black54,
            ),
            SizedBox(
              width: 220,
            ),
            Icon(
              Icons.local_activity_outlined,
              color: Colors.black54,
            )
          ]),
        ),
        const Padding(
          padding: EdgeInsets.only(),
          child: Text(
            '23 Hours ago ',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}