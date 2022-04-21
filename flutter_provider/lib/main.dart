import 'package:flutter/material.dart';
import 'package:flutter_provider/change_notifier/change_notifier_page.dart';
import 'package:flutter_provider/change_notifier/provider_controller.dart';
import 'package:flutter_provider/provider/provider_page.dart';
import 'package:flutter_provider/provider/user_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) {
          return UserModel(
            name: 'Daniel Morita',
            imgAvatar:
                'https://images.unsplash.com/photo-1622737133809-d95047b9e673?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVzdCUyMGltYWdlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
            birthDate: '12/10/1986',
          );
        }),
        ChangeNotifierProvider(
          create: (context) => ProviderController(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/provider': (context) => const ProviderPage(),
          '/change_notifier': (context) => const ChangeNotifierPage(),
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/provider');
                      },
                      child: const Text('Provider'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/change_notifier');
                      },
                      child: const Text('Change Notifier'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
