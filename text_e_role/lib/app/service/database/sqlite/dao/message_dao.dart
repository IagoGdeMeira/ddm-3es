import 'package:sqflite/sqflite.dart';
import 'package:text_e_role/app/domain/idao/message_idao.dart';
import 'package:text_e_role/app/domain/dto/message_dto.dart';
import 'package:text_e_role/app/service/database/sqlite/connection.dart';


class MessageDao implements MessageIDAO {
  late Database _db;

  final insertSQL = '''
    INSERT INTO messages(
      content,
      sendingDate,
      editDate,
      status,
      author_id
    ) VALUES (?, ?, ?, ?, ?);
  ''';

  final alterSQL = '''
    UPDATE messages SET
      content,
      sendingDate,
      editDate,
      status,
      author_id
    WHERE id = ?;
  ''';

  final deleteSQL = '''
    UPDATE messages SET status = 'I'
    WHERE id = ?;
  ''';

  final selectByIdSQL = 'SELECT * FROM messages WHERE id = ?;';

  final selectSQL = 'SELECT * FROM messages;';

  @override
  Future<MessageDTO> save(MessageDTO dto) async {
    _db = await Connection.init();

    int id = await _db.rawInsert(insertSQL, [
      dto.content,
      dto.sendingDate,
      dto.editDate,
      dto.status,
      dto.status,
      dto.author.id,
    ]);

    dto.id = id;
    return dto;
  }

  @override
  Future<MessageDTO> searchById(int id) {
    // TODO: implement searchById
    throw UnimplementedError();
  }

  @override
  Future<MessageDTO> update(MessageDTO dto) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<bool> updateStatus(int id) {
    // TODO: implement updateStatus
    throw UnimplementedError();
  }
  
  @override
  Future<List<MessageDTO>> searchActiveByChat(int chatId) {
    // TODO: implement searchActiveByChat
    throw UnimplementedError();
  }
}