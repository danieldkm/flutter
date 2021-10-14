import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  final String parametro;
  const DetalhePage({
    Key? key,
    required this.parametro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var parametro = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe page'),
      ),
      body: Center(
        // child: Text(parametro ?? 'Não foi enviado o parametro'),
        child: Text(parametro),
      ),
    );
  }
}
