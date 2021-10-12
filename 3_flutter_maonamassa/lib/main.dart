import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/home/home_page.dart';
import 'package:flutter_maonamassa/navegacao/home_page.dart' as navegacao;
import 'package:flutter_maonamassa/images/images_page.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';
import 'package:flutter_maonamassa/navegacao_params/detalhe.dart';
import 'package:flutter_maonamassa/navegacao_params/lista.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: ImagesPage(),
      // home: HomePage(),
      // Nagecação por pagina.
      // home: navegacao.HomePage(),
      initialRoute: Lista.routeName,
      // Navegação por nome
      routes: {
        '/': (_) => navegacao.HomePage(),
        Page1.routeName: (_) => Page1(),
        Page2.routeName: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
        Lista.routeName: (_) => Lista(),
        Detalhe.routeName: (_) => Detalhe(),
      },
    );
  }
}
