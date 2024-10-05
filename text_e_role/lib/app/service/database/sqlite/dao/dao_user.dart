import 'package:sqflite/sqflite.dart';
import 'package:text_e_role/app/domain/interface/i_dao_user.dart';
import 'package:text_e_role/app/domain/dto/dto_user.dart';
import 'package:text_e_role/app/service/database/sqlite/connection.dart';


class DAOUser implements IDAOUser {
  late Database _db;

  final insertSQL = '''
    INSERT INTO user(
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
  Future<List<DTOUser>> searchAll() async {
    _db = await Connection.init();

    var listedUsers = await _db.rawQuery(selectSQL);

    return List.generate(listedUsers.length, (i) {
      var user = listedUsers[i];

      return DTOUser(
        id: user['id'], 
        username: user['username'].toString(), 
        email: user['email'].toString(), 
        password: user['password'].toString(), 
        status: user['status'].toString(), 
        displayName: user['display_name'].toString(),
        avatarURL: user['avatar_URL'].toString(),
        biography: user['biography'].toString()
      );
    });
  }

  @override
  Future<DTOUser> searchById(int id) async {
    _db = await Connection.init();

    var user = (await _db.rawQuery(selectByIdSQL,[id])).first;
    
    return DTOUser(
      id: user['id'], 
      username: user['username'].toString(), 
      email: user['email'].toString(), 
      password: user['password'].toString(), 
      status: user['status'].toString(), 
      displayName: user['display_name'].toString(),
      avatarURL: user['avatar_URL'].toString(),
      biography: user['biography'].toString()
    );
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