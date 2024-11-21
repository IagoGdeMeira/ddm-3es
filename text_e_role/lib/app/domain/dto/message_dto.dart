import 'package:text_e_role/app/domain/entity/user.dart';


class MessageDTO {
  dynamic id;
  final String content;
  final DateTime sendingDate;
  final DateTime? editDate;
  final String status;
  final User author;

  MessageDTO({
    this.id,
    required this.content,
    required this.sendingDate,
    this.editDate,
    this.status = 'A',
    required this.author
  });
}