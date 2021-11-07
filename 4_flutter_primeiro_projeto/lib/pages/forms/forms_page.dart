import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  String categoria = 'Categoria1';

  @override
  void dispose() {
    super.dispose();
    nameEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  Text('Sem validação'),
                  TextField(
                    onChanged: (String value) {
                      setState(() {
                        texto = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Texto digitado $texto'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.amber,
              thickness: 30,
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Com validação'),
                  TextFormField(
                    controller: nameEC,
                    decoration: InputDecoration(
                      label: Text('Nome Completo'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      isDense: true,
                    ),
                    maxLines: 2,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo X não preenchido';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('senha'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      isDense: true,
                    ),
                    //maxLines: null,
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo Y não preenchido';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField<String>(
                    value: categoria,
                    icon: Icon(Icons.arrow_back_ios),
                    decoration: InputDecoration(
                      label: Text('Categoria'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      isDense: true,
                    ),
                    isDense: true,
                    elevation: 20,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Categoria não preenchida';
                      }
                    },
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          categoria = newValue;
                        });
                      }
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text('Categoria 1'),
                        value: 'Categoria1',
                      ),
                      DropdownMenuItem(
                        child: Text('Categoria 2'),
                        value: 'Categoria2',
                      ),
                      DropdownMenuItem(
                        child: Text('Categoria 3'),
                        value: 'Categoria3',
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final formValid =
                          formKey.currentState?.validate() ?? false;
                      var message = 'Formulário Inválido.';
                      if (formValid) {
                        message = 'Formulário válido. (Name: ${nameEC.text})';
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message)),
                      );
                    },
                    child: Text('Salvar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
