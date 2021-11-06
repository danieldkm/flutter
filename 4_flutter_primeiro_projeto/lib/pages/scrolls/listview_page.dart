import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      /*body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter e top'),
            leading: CircleAvatar(),
          );
        },
      ),*/
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          /*return Container(
            height: 10,
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
          );*/
          return Divider(
            color: Colors.red,
            thickness: 10,
          );
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter e top'),
            leading: CircleAvatar(),
          );
        },
      ),
    );
  }
}
