import 'package:text_e_role/domain/dto/dto_user.dart';

class User {
  late dynamic id;
  late String email;
  late String password;
  late String username;

  DTOUser dto;

  User({required this.dto}) {
    id = dto.id;
    email = dto.email;
    password = dto.password;
    username = dto.username;
  }

  bool isEmailValid() {
    // Preencher corpo do método

    return true;
  }

  bool isPasswordValid() {
    // Preencher corpo do método

    return true;
  }

  bool isUsernameValid() {
    // Preencher corpo do método

    return true;
  }
}
