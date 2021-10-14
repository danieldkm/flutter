import 'package:flutter/material.dart';

// class Detalhe extends StatelessWidget {
//   const Detalhe({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final params =
//         ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Lista'),
//       ),
//       body: Center(
//         child: Text('O id do produto é ${params?['id'] ?? 0}'),
//       ),
//     );
//   }
// }

class Detalhe extends StatefulWidget {
  static final String routeName = '/detalhe';
  const Detalhe({Key? key}) : super(key: key);

  @override
  _DetalheState createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int id = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      final params =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = params?['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Center(
        child: Text('O id do produto é $id'),
      ),
    );
  }
}
