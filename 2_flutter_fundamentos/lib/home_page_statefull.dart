import 'package:flutter/material.dart';

class HomePageStatefull extends StatefulWidget {
  const HomePageStatefull({Key? key}) : super(key: key);

  @override
  _HomePageStatefullState createState() => _HomePageStatefullState();
}

class _HomePageStatefullState extends State<HomePageStatefull> {
  String texto = 'Estou no StatelessWidget';

  _HomePageStatefullState() {
    print('constructor _HomePageStatefullState');
  }

  @override
  void initState() {
    print('initState');
    super.initState();
    // texto = 'Texto alterado pelo initState';
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomePageStatefull oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('Buildando o HomePageStatefull');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              setState(() {
                texto = 'Alterei o texto do StatelessWidget';
              });
            },
            child: Text('Alterar Texto'),
          ),
        ],
      ),
    );
  }
}
