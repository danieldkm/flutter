import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigator bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        iconSize: 30,
        backgroundColor: Theme.of(context).primaryColor,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Pagina 1',
            icon: Icon(Icons.add_a_photo_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Pagina 2',
            icon: Icon(Icons.rowing),
          )
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
