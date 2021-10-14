import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/core/navigator_observer_custom.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      onGenerateRoute: (RouteSettings settings) {
        // não vai ser chamado foi feita por rota nomeada
        // se existir o routes tbm não ira cair aqui, a não se que a rota não foi mapeado.
        if (settings.name == '/') {
          return MaterialPageRoute(
            // deve repassar o settings para tratar os parametros e etc
            settings: settings,
            builder: (context) => HomePage(),
          );
        }
        if (settings.name == '/detalhe') {
          final parametro = settings.arguments as String?;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(
              parametro: parametro ?? 'Não foi enviado o parametro',
            ),
          );
        }
      },
      routes: {
        //   '/': (_) => HomePage(),
        // '/detalhe': (_) => DetalhePage(),
        '/detalhe2': (_) => Detalhe2Page(),
      },
    );
  }
}
