import 'package:flutter_test/flutter_test.dart';
import 'package:text_e_role/app/service/database/sqlite/script.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


main() async {
  setUpAll((){
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  test('Testing the creation of tables in the database.', () async {
    var db = await openDatabase(
      inMemoryDatabasePath,
      version: 1,
      onCreate: (db, version) async {
        expect(() => createTables.forEach(db.execute), returnsNormally);
      }
    );

    await db.close();
  });

  test('Testing the insertion of data in the created tables.', () async {
    var db = await openDatabase(
      inMemoryDatabasePath,
      version: 1,
      onCreate: (db, version) async {
        createTables.forEach(db.execute);
        expect(() => insertTest.forEach(db.execute), returnsNormally);
      }
    );

    await db.close();
  });
}