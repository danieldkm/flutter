import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/bloc_pattern/bloc_pattern_page.dart';
import 'package:flutter_default_state_manager/change_notifier/change_notifier_page.dart';
import 'package:flutter_default_state_manager/setState/imc_setstate_page.dart';
import 'package:flutter_default_state_manager/value_notifier/value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => _goToPage(context, const ImcSetStatePage()),
                child: const Text('SetState')),
            ElevatedButton(
                onPressed: () => _goToPage(context, const ValueNotifierPage()),
                child: const Text('ValueNotifier')),
            ElevatedButton(
                onPressed: () => _goToPage(context, const ChangeNotifierPage()),
                child: const Text('ChangeNotifier')),
            ElevatedButton(
                onPressed: () => _goToPage(context, const BlocPatternPage()),
                child: const Text('Bloc Pattern (Streams)')),
          ],
        ),
      ),
    );
  }
}
