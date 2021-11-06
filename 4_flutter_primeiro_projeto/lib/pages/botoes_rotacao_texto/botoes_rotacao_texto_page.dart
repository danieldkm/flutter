import 'dart:io';

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.red,
                    child: Text('Daniel Morita'),
                  ),
                ),
                Icon(Icons.ac_unit),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize: Size(50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shadowColor: Colors.yellow,
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airplanemode_active),
              label: Text('Modo Avião'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                //minimumSize: MaterialStateProperty.all(Size(120, 50)),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    print(states);
                    if (states.contains(MaterialState.pressed)) {
                      return Size(150, 150);
                    } else if (states.contains(MaterialState.hovered)) {
                      return Size(180, 180);
                    }
                    return Size(120, 50);
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    print(states);
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text('InkWell'),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => print('Gesture clicado'),
              child: Text('GestureDetector'),
              onVerticalDragStart: (_) => print('Gesture Start Movimentado $_'),
            ),
            SizedBox(
              height: 10,
            ),
            // botao customizado do zero
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green,
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.red,
                  ),
                ],
              ),
              child: TextButton(
                //InkWell
                //borderRadius: BorderRadius.circular(50),
                //onTap: () {},
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(50, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(60),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
