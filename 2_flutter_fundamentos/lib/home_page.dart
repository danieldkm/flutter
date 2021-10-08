import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String texto = 'Estou no StatelessWidget';
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              texto = 'Alterei o texto do StatelessWidget';
            },
            child: Text('Alterar Texto'),
          ),
        ],
      ),
    );
  }
}
