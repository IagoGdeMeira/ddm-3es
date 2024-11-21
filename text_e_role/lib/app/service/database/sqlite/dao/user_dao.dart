import 'package:sqflite/sqflite.dart';
import 'package:text_e_role/app/domain/idao/user_idao.dart';
import 'package:text_e_role/app/domain/dto/user_dto.dart';
import 'package:text_e_role/app/service/database/sqlite/connection.dart';


class UserDAO implements UserIDAO {
  late Database _db;

  final insertSQL = '''
    INSERT INTO users(
      username,
      email,
      password,
      status,
      display_name,
      avatar_url,
      biography
    ) VALUES (?, ?, ?, ?, ?, ?, ?);
  ''';

  final alterSQL = '''
    UPDATE users SET
      username = ?,
      email = ?,
      password = ?,
      status = ?,
      display_name = ?,
      avatar_url = ?,
      biography = ?
    WHERE id = ?;
  ''';

  final deleteSQL = '''
    UPDATE users SET status = 'I'
    WHERE id = ?;
  ''';

  final selectByIdSQL = 'SELECT * FROM users WHERE id = ?;';

  final selectSQL = 'SELECT * FROM users;';

  @override
  Future<UserDTO> save(UserDTO dto) async {
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
  Future<List<UserDTO>> searchAll() async {
    _db = await Connection.init();

    var listedUsers = await _db.rawQuery(selectSQL);

    return List.generate(listedUsers.length, (i) {
      var user = listedUsers[i];

      return UserDTO(
        id: user['id'], 
        username: user['username'].toString(), 
        email: user['email'].toString(), 
        password: user['password'].toString(), 
        status: user['status'].toString(), 
        displayName: user['display_name'].toString(),
        avatarURL: user['avatar_url'].toString(),
        biography: user['biography'].toString()
      );
    });
  }

  @override
  Future<UserDTO> searchById(int id) async {
    _db = await Connection.init();

    var user = (await _db.rawQuery(selectByIdSQL,[id])).first;
    
    return UserDTO(
      id: user['id'], 
      username: user['username'].toString(), 
      email: user['email'].toString(), 
      password: user['password'].toString(), 
      status: user['status'].toString(), 
      displayName: user['display_name'].toString(),
      avatarURL: user['avatar_url'].toString(),
      biography: user['biography'].toString()
    );
  }
  
  @override
  Future<UserDTO> update(UserDTO dto) async {
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