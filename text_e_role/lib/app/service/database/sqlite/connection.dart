import 'package:text_e_role/app/service/database/sqlite/script.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class Connection {
  static late Database _db;

  static Future<Database> init() async {
    var path = join(await getDatabasesPath(), 'text_e_role.db');
    deleteDatabase(path);

    _db = await openDatabase(path, version: 1, onCreate: (db, version) {
      createTables.forEach(db.execute);
    }, singleInstance: true);
    
    return _db;
  }
}
