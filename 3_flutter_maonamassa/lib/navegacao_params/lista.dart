import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  static final String routeName = '/navegacao_params';
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     settings: RouteSettings(
                //       name: 'detalhe',
                //       arguments: {
                //         'id': 10,
                //       },
                //     ),
                //     builder: (context) => Detalhe(),
                //   ),
                // );
                Navigator.pushNamed(
                  context,
                  Detalhe.routeName,
                  arguments: {'id': 20},
                );
              },
              child: Text('detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
