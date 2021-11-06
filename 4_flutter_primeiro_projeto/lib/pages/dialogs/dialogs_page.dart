import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return DialogCustom(context);
                  },
                );
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('SimpleDialog'),
                      contentPadding: const EdgeInsets.all(10),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('TituloX'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    if (Platform.isIOS) {
                      return CupertinoAlertDialog(
                        title: Text('AlertDialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Desenha realmente salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: () {}, child: Text('Cancelar')),
                          TextButton(
                              onPressed: () {}, child: Text('Confirmar')),
                        ],
                      );
                    }
                    return AlertDialog(
                      title: Text('AlertDialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('Desenha realmente salvar?'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Cancelar')),
                        TextButton(onPressed: () {}, child: Text('Confirmar')),
                      ],
                    );
                  },
                );
              },
              child: Text('AlertDialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (Platform.isIOS) {
                  showBottomSheet(
                    context: context,
                    builder: (context) {
                      return CupertinoTimerPicker(
                        onTimerDurationChanged: (value) =>
                            print('O horario selecionado foi $value'),
                      );
                    },
                  );
                  return;
                }
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print('O horario selecionado foi $selectedTime');
              },
              child: Text('TimePicker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3025),
                );
                print('A data selecionada foi $selectedDate');
              },
              child: Text('DatePicker'),
            ),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                  context: context,
                  applicationIcon: Icon(Icons.flutter_dash),
                );
              },
              child: Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
