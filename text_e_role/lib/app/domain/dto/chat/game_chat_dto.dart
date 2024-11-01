import 'package:text_e_role/app/domain/dto/chat/general_chat_dto.dart';


class GameChatDTO extends GeneralChatDTO {
  final List<dynamic> gameMasterIDs;

  GameChatDTO({
    super.id,
    required super.name,
    super.description,
    super.status = 'A',
    required super.users,
    super.messages = const [],
    required super.moderatorIDs,
    required super.creator,
    required super.creationDate,
    required this.gameMasterIDs
  });
}
