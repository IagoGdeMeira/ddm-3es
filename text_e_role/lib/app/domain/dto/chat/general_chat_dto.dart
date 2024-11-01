import 'package:text_e_role/app/domain/entity/message.dart';
import 'package:text_e_role/app/domain/entity/user.dart';


class GeneralChatDTO {
  dynamic id;
  final String name;
  final String? description;
  final String status;
  final List<User> users;
  final List<Message> messages;
  final List<dynamic> moderatorIDs;
  final User creator;
  final DateTime creationDate;

  GeneralChatDTO({
    this.id,
    required this.name,
    this.description,
    this.status = 'A',
    required this.users,
    this.messages = const [],
    required this.moderatorIDs,
    required this.creator,
    required this.creationDate
  });
}