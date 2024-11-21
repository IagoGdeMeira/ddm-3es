import 'package:text_e_role/app/domain/dto/chat/general_chat_dto.dart';
import 'package:text_e_role/app/domain/idao/chat_idao.dart';


abstract class GeneralChatIDAO extends ChatIDAO<GeneralChatDTO> {
  Future<List<GeneralChatDTO>> searchByModeratorID(int moderatorIDs);
}