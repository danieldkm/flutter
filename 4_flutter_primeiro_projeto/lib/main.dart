import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/homes/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_columns_page.dart';

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
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnsPage(),
      },
    );
  }
}
