import 'package:text_e_role/app/domain/dto/message_dto.dart';


abstract class MessageIDAO {
  Future<MessageDTO> save(MessageDTO dto);
  Future<MessageDTO> update(MessageDTO dto);
  Future<bool> updateStatus(int id);
  Future<MessageDTO> searchById(int id);
  Future<List<MessageDTO>> searchActiveByChat(int chatId);
}