import 'package:flutter/foundation.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  Database? db;
  // Future<void> createTable() async {
  //   try {
  //     await db!.execute("""
  //     Create table orders(
  //     id integer primary key,
  //     sliceType text,
  //     sliceNum integer,
  //     specialAdds text,
  //     phoneNum text
  // )
  // """);
  //     print("orders table created");
  //   } catch (e, s) {
  //     print("==================> $e");
  //     print("==================> $s");
  //   }
  // }

  Future<bool> createTables() async {
    try {
      var batch = db!.batch();

      batch.execute("""
      Create table If not exists orders(
      sliceType text,
      sliceNum integer,
      specialAdds text,
      phoneNum text
      )
      """);
      // batch.execute("""
      // Create table If not exists categories(
      // id integer primary key,
      // name text,
      // description text
      // )""");
      // batch.execute("""
      // Create table If not exists products(
      // id integer primary key,
      // name text,
      // description text,
      // price double,
      // stock integer,
      // isAvaliable boolean,
      // image blob,
      // categoryId integer
      // )""");
      // batch.execute("""
      // Create table If not exists clients(
      // id integer primary key,
      // name text,
      // email text,
      // phone text,
      // address text
      // )""");

      var result = await batch.commit();

      print('tables Created Successfully: $result');
      return true;
    } catch (e) {
      print('error in create tables $e');
      return false;
    }
  }

  Future<void> initDb() async {
    try {
      if (kIsWeb) {
        var factory = databaseFactoryFfiWeb;
        db = await factory.openDatabase('orders.db');
        var sqliteVersion =
            (await db!.rawQuery('select sqlite_version()')).first.values.first;
        print(db.hashCode);
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

  // Future<void> createaTable() async {
  //   try {} catch (e, s) {
  //     print('the error is ===========> $e ');
  //   }
  // }
}
