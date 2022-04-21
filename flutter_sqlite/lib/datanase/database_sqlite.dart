import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqlite {
  Future<Database> openConnection() async {
    final databasePath = await getDatabasesPath();
    final dataFinalPath = join(databasePath, 'SQLITE_EXAMPLE');
    print('path $dataFinalPath');
    return await openDatabase(
      dataFinalPath,
      version: 2,
      onConfigure: (db) async {
        print('onConfigure');
        await db.execute(
            'PRAGMA foreign_keys = ON'); // ligar as chaves estrangeiras.
      },
      onCreate: (Database db, int version) {
        print('onCreate');
        final batch = db.batch();
        batch.execute('''
          create table teste (
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');

        batch.execute('''
            create table produto (
              id Integer primary key autoincrement,
              nome varchar(200)
            )
          ''');

        // batch.execute('''
        //     create table categoria (
        //       id Integer primary key autoincrement,
        //       nome varchar(200)
        //     )
        //   ''');
        batch.commit();
      },
      onUpgrade: (Database db, int oldversion, int version) {
        print('onUpgrade');
        final batch = db.batch();
        if (oldversion == 1) {
          batch.execute('''
            create table produto (
              id Integer primary key autoincrement,
              nome varchar(200)
            )
          ''');
        }
        // if (oldversion == 2) {
        //   batch.execute('''
        //     create table categoria (
        //       id Integer primary key autoincrement,
        //       nome varchar(200)
        //     )
        //   ''');
        // }
        batch.commit();
      },
      onDowngrade: (Database db, int oldversion, int version) {
        print('onDowngrade');
        final batch = db.batch();

        if (oldversion == 3) {
          batch.execute('''
            drop table categoria
          ''');
        }

        batch.commit();
      },
    );
  }
}
