import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget_example/home/home_page.dart';
import 'package:flutter_inherited_widget_example/model/user_model.dart';
import 'package:flutter_inherited_widget_example/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Daniel Morita',
      imgAvatar:
          'https://i.pinimg.com/550x/23/9c/05/239c05c5dcbf173b8642432fe8e460f1.jpg',
      brithDate: '12/10/1986',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (_) => SplashPage(),
          '/home': (_) => HomePage(),
        },
      ),
    );
  }
}
