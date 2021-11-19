import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.amber,
            ]),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: EdgeInsets.all(3),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  urlImage,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'AO VIVO',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
