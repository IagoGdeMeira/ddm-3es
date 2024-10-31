import 'package:text_e_role/app/domain/entity/user.dart';


abstract class Chat {
  dynamic id;
  String? name;
  String? description;
  String? status;
  List<User>? users;
}
