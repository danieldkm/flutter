import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_link_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplane_ticket_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Drawer aberto'),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Drawer a direita'),
        ),
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}
