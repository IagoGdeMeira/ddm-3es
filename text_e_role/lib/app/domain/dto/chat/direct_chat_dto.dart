import 'package:text_e_role/app/domain/entity/message.dart';
import 'package:text_e_role/app/domain/entity/user.dart';


class DirectChatDTO {
  dynamic id;
  final String name;
  final String? description;
  final String status;
  final List<User> users;
  final List<Message> messages;

  DirectChatDTO({
    this.id,
    required this.name,
    this.description,
    this.status = 'A',
    required this.users,
    this.messages = const [],
  });
}