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
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        SizedBox(
          width: 80,
          height: 80,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.all(3),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  urlImage,
                ),
              ),
            ),
          ),
        ),
        // SizedBox(
        //   width: 80,
        //   height: 80,
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Container(
        //       padding: const EdgeInsets.all(6),
        //       decoration: BoxDecoration(
        //         color: Colors.red,
        //         borderRadius: BorderRadius.circular(5),
        //       ),
        //       child: const Text(
        //         'AO VIVO',
        //         style: TextStyle(fontSize: 10),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
