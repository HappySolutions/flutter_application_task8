import 'package:flutter/foundation.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  Database? db;

  void initDb() async {
    try {
      if (kIsWeb) {
        var factory = databaseFactoryFfiWeb;
        var dbCreate = await factory.openDatabase('orders.db');
        var sqliteVersion = (await dbCreate.rawQuery('select sqlite_version()'))
            .first
            .values
            .first;
        db = dbCreate;
        print(dbCreate.hashCode);
        print(sqliteVersion); // should print 3.39.3
      } else {
        db = await openDatabase('orders.db', version: 1,
            onCreate: (db, version) {
          print('============DB created ===========');
        });
      }
    } catch (e) {
      print('eror in create db : $e');
    }
  }

  Future<void> createaTable() async {
    try {
      await db!.execute("""
      Create table if not exists orders(
        id integer primary key,
        sliceType text not null,
        sliceNum integer not null,
        specialAdds text not null,
        phoneNum text not null
      )
      """);
      print("orders table created");
    } catch (e, s) {
      print('the error is ===========> $e ');
    }
  }
}
