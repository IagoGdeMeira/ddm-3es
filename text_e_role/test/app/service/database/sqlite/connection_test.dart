import 'package:flutter_test/flutter_test.dart';
import 'package:text_e_role/app/service/database/sqlite/connection.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


main()async{
  setUpAll((){
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  test('Testing Connection with database', () async {
    var db = await Connection.init();
    expect(db.isOpen, true);

    await db.close();
  });
}