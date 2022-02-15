import 'package:flutter/material.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  _ColorsPageState createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  @override
  Widget build(BuildContext context) {
    // final cor = Colors.blue;
    // final cor = Colors.blue.withOpacity(0.5);
    // final cor = Color.fromRGBO(0, 0, 255, 1);
    final cor = Color(0XFF45D1FD);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}
