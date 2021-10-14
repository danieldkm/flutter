import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {
  const Detalhe2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe 2 Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Navigator.of(context).pop(
            //   'Parametro retornado pela tela de Detalhe2Page',
            // );
            Navigator.pop(
              context,
              'Parametro retornado pela tela de Detalhe2Page',
            );
          },
          child: Text('Voltar'),
        ),
      ),
    );
  }
}
