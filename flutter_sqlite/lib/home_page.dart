import 'package:flutter/material.dart';
import 'package:flutter_sqlite/datanase/database_sqlite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _database();
  }

  Future<void> _database() async {
    final database = await DatabaseSqlite().openConnection();
    // database.insert('teste', {'nome': 'Daniel Morita'});
    // database.delete('teste', where: 'nome = ?', whereArgs: ['Daniel Morita']);
    // database.update('teste', {'nome': 'Academia do Flutter'},
    // where: 'nome = ?', whereArgs: ['Daniel Morita']);

    // var result = await database.query('teste');
    // print(result);

    // database.rawInsert('insert into teste values (null, ?)', ['Daniel']);
    // database
    // .rawUpdate('update teste set nome = ? where id = ?', ['Daniel2', 4]);
    // database.rawDelete('delete from teste where id = ?', [4]);
    var result = await database.rawQuery('select * from teste');
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Container(),
    );
  }
}
