import 'package:text_e_role/app/domain/entity/user.dart';


class MessageDTO {
  dynamic id;
  final String content;
  final User author;
  final DateTime sendingDate;
  final DateTime? editDate;
  final String status;

  MessageDTO({
    this.id,
    required this.content,
    required this.author,
    required this.sendingDate,
    this.editDate,
    this.status = 'A'
  });
}