import 'package:text_e_role/domain/dto/dto_user.dart';

class User {
  late dynamic id;
  late String email;
  late String password;
  late String username;
  late String urlAvatar;

  DTOUser dto;

  User({required this.dto}) {
    isEmpty(dto.email);
    isEmpty(dto.password);
    isEmpty(dto.username);

    id = dto.id;
    email = dto.email;
    password = dto.password;
    username = dto.username;
  }

  bool isEmailValid() {
    final emailFormat = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );

    if (!emailFormat.hasMatch(email))
      throw Exception('ERROR: Invalid e-mail format.');

    return true;
  }

  bool isEmpty(String requiredInfo) {
    if (requiredInfo.isEmpty)
      throw Exception('ERROR: Required information cannot be empty.');

    return false;
  }

  bool isPasswordValid() {
    final passwordFormat = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$',
    );

    if (!passwordFormat.hasMatch(password))
      throw Exception('ERROR: Invalid password format.');

    return true;
  }

  bool isUsernameValid() {
    // Preencher corpo do método

    return true;
  }
}
