import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Center(
        // child: Image(
        //   image: AssetImage('assets/images/wallpaper.jpg'),
        // ),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/wallpaper.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                  child: Text(
                'Wallpaper',
                style: TextStyle(
                  backgroundColor: Colors.white.withOpacity(0.6),
                  fontSize: 20,
                ),
              )),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'https://blog.vandersonguidi.com.br/wp-content/uploads/2019/08/flutter.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
