import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  scrolls_single_child,
  scrolls_list_view,
  dialogs,
  snackbars,
  forms,
  cidades,
  stacks,
  stacks2,
  bottom_navigator_bar,
  circle_avatars,
  colors,
  material_banner,
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
                  case PopupMenuPages.scrolls_single_child:
                    Navigator.pushNamed(context, '/scrolls/single_child');
                    break;
                  case PopupMenuPages.scrolls_list_view:
                    Navigator.pushNamed(context, '/scrolls/list_view');
                    break;
                  case PopupMenuPages.dialogs:
                    Navigator.pushNamed(context, '/dialogs');
                    break;
                  case PopupMenuPages.snackbars:
                    Navigator.pushNamed(context, '/snackbars');
                    break;
                  case PopupMenuPages.forms:
                    Navigator.pushNamed(context, '/forms');
                    break;
                  case PopupMenuPages.cidades:
                    Navigator.pushNamed(context, '/cidades');
                    break;
                  case PopupMenuPages.stacks:
                    Navigator.pushNamed(context, '/stacks');
                    break;
                  case PopupMenuPages.stacks2:
                    Navigator.pushNamed(context, '/stacks/2');
                    break;
                  case PopupMenuPages.bottom_navigator_bar:
                    Navigator.pushNamed(context, '/bottom_navigator_bar');
                    break;
                  case PopupMenuPages.circle_avatars:
                    Navigator.pushNamed(context, '/circle_avatars');
                    break;
                  case PopupMenuPages.colors:
                    Navigator.pushNamed(context, '/colors');
                    break;
                  case PopupMenuPages.material_banner:
                    Navigator.pushNamed(context, '/material_banner');
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
                    child: Text('Bot??es Rota????o Texto'),
                    value: PopupMenuPages.botoes_rotacao_texto,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Scroll SingleChild'),
                    value: PopupMenuPages.scrolls_single_child,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Scroll ListView'),
                    value: PopupMenuPages.scrolls_list_view,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Dialogs'),
                    value: PopupMenuPages.dialogs,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Snackbars'),
                    value: PopupMenuPages.snackbars,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Forms'),
                    value: PopupMenuPages.forms,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Cidades'),
                    value: PopupMenuPages.cidades,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Stacks'),
                    value: PopupMenuPages.stacks,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Stacks 2'),
                    value: PopupMenuPages.stacks2,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Bottom Navigator bar'),
                    value: PopupMenuPages.bottom_navigator_bar,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Circle Avatar'),
                    value: PopupMenuPages.circle_avatars,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Colors'),
                    value: PopupMenuPages.colors,
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    child: Text('Material Banner'),
                    value: PopupMenuPages.material_banner,
                  ),
                ];
              })
        ],
      ),
      body: Theme(
        // data: ThemeData(primaryColor: Colors.blueGrey),
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blueGrey,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Botao')),
              ContainerX(),
              Container(
                height: 100,
                width: 100,
                color: Theme.of(context).primaryColor,
              ),
              Builder(builder: (context) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).primaryColor,
                );
              }),
              TextButton(
                onPressed: () {},
                child: Text('TESTE'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  textStyle: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerX extends StatelessWidget {
  const ContainerX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Theme.of(context).primaryColor,
    );
  }
}
