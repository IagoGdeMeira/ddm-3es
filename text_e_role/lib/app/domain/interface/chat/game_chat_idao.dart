import 'package:text_e_role/app/domain/dto/chat/game_chat_dto.dart';
import 'package:text_e_role/app/domain/interface/chat/general_chat_idao.dart';


abstract class GameChatIDAO extends GeneralChatIDAO {
  Future<List<GameChatDTO>> searchByGameMasterID(int gameMasterIDs);
}