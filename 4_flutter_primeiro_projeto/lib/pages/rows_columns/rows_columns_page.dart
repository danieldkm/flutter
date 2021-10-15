import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows & Columns'),
      ),
      body: Container(
        width: 400,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.cyan,
              height: 200,
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    child: Text('Element 1'),
                  ),
                  Text('Element 2'),
                  Text('Element 3'),
                  Container(
                    height: 200,
                    color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(color: Colors.blue, child: Text('25')),
                        Container(color: Colors.blue, child: Text(' ')),
                        Container(color: Colors.blue, child: Text('min')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
