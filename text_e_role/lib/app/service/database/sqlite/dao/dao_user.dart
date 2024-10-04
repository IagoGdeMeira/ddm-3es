import 'package:sqflite/sqflite.dart';
import 'package:text_e_role/app/domain/interface/idao_user.dart';
import 'package:text_e_role/app/domain/dto/dto_user.dart';
import 'package:text_e_role/app/service/database/sqlite/connection.dart';

class DAOUser implements IDAOUser {
  late Database _db;

  final insertSQL = '''
    INSERT VALUES INTO user(
      username,
      email,
      password,
      status,
      display_name,
      avatar_URL,
      biography
    ) VALUES (?, ?, ?, ?, ?, ?, ?);
  ''';

  final alterSQL = '''
    UPDATE user SET
      username = ?,
      email = ?,
      password = ?,
      status = ?,
      display_name = ?,
      avatar_URL = ?,
      biography = ?
    WHERE id = ?;
  ''';

  final deleteSQL = '''
    UPDATE user SET status = 'I'
    WHERE id = ?;
  ''';

  final selectByIdSQL = 'SELECT * FROM user WHERE id = ?;';

  final selectSQL = 'SELECT * FROM user;';

  @override
  Future<DTOUser> save(DTOUser dto) async {
    _db = await Connection.init();

    int id = await _db.rawInsert(insertSQL, [
      dto.username,
      dto.email,
      dto.password,
      dto.status,
      dto.displayName,
      dto.avatarURL,
      dto.biography
    ]);
    dto.id = id;

    return dto;
  }

  @override
  Future<List<DTOUser>> searchAll() {
    // TODO: implement searchAll
    throw UnimplementedError();
  }

  @override
  Future<DTOUser> searchById(int id) {
    // TODO: implement searchById
    throw UnimplementedError();
  }

  @override
  Future<DTOUser> update(DTOUser dto) async {
    _db = await Connection.init();
    await _db.rawUpdate(alterSQL, [
      dto.username,
      dto.email,
      dto.password,
      dto.status,
      dto.displayName,
      dto.avatarURL,
      dto.biography,
      dto.id
    ]);
    
    return dto;
  }

  @override
  Future<bool> updateStatus(int id) async {
    _db = await Connection.init();
    await _db.rawUpdate(deleteSQL, [id]);

    return true;
  }
}
