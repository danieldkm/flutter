import 'package:flutter/material.dart';

class SnackbarsPage extends StatelessWidget {
  const SnackbarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.amber,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.amber,
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: () {
                      print('Clicado!!');
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                //ScaffoldMessenger.of(context).hideCurrentSnackBar();
                //ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
