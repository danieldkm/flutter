import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              // icon: Icon(Icons.restaurant_menu),
              tooltip: 'Selecione um Item do menu',
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.pushNamed(context, '/container');
                    break;
                  case PopupMenuPages.rows_columns:
                    Navigator.pushNamed(context, '/rows_columns');
                    break;
                  case PopupMenuPages.media_query:
                    Navigator.pushNamed(context, '/media_query');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Container'),
                    value: PopupMenuPages.container,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Rows & Columns'),
                    value: PopupMenuPages.rows_columns,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('MediaQuery'),
                    value: PopupMenuPages.media_query,
                  ),
                ];
              })
        ],
      ),
      body: Container(),
    );
  }
}
