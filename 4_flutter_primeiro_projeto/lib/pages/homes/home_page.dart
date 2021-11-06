import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
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
                  case PopupMenuPages.layout_builder:
                    Navigator.pushNamed(context, '/layout_builder');
                    break;
                  case PopupMenuPages.botoes_rotacao_texto:
                    Navigator.pushNamed(context, '/botoes_rotacao_texto');
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
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('LayoutBuilder'),
                    value: PopupMenuPages.layout_builder,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Botões Rotação Texto'),
                    value: PopupMenuPages.botoes_rotacao_texto,
                  ),
                ];
              })
        ],
      ),
      body: Container(),
    );
  }
}
