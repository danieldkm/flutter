import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            fontFamily: 'DancingScript',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page2'),
                    builder: (context) => Page2(),
                  ),
                );
              },
              child: Text('Page2 Via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Page2.routeName);
                // Navigator.of(context).pushNamed('/page2');
              },
              child: Text('Page2 Via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
