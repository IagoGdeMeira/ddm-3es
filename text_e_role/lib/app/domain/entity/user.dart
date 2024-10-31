import 'package:text_e_role/app/domain/dto/user_dto.dart';
import 'package:text_e_role/app/domain/interface/user_idao.dart';
import 'package:text_e_role/app/domain/vo/password.dart' as password_validator;


class User {
  dynamic _id;
  String? _username;
  String? _email;
  String? _password;
  String _status = 'A';
  String? _displayName;
  String? _avatarURL;
  String? _biography;

  UserIDAO userDAO;

  User({required this.userDAO});

  validateUser({required UserDTO dto}) {
    username = dto.username;
    email = dto.email;
    password = dto.password;
    status = dto.status;
    displayName = dto.displayName;
    avatarURL = dto.avatarURL;
    biography = dto.biography;
  }

  Future<UserDTO> save(UserDTO dto) async {
    validateUser(dto: dto);
    return await userDAO.save(dto);
  }

  Future<UserDTO> update(dynamic id) async {
    this.id = id;
    return await userDAO.update(_id);
  }

  Future<bool> delete(dynamic id) async {
    this.id = id;
    await userDAO.updateStatus(_id);

    return true;
  }

  Future<List<UserDTO>> searchAll() async {
    return await userDAO.searchAll();
  }

  bool isEmailValid(String email) {
    final emailFormat = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    if (!emailFormat.hasMatch(email)) throw Exception('Invalid e-mail format.');

    return true;
  }

  String? get username => _username;
  String? get email => _email;
  String? get password => _password;
  String? get status => _status;
  String? get displayName => _displayName;
  String? get avatarURL => _avatarURL;
  String? get biography => _biography;

  set id(int? id) {
    if (id == null) throw Exception('User ID cannot be null.');
    if (id < 0) throw Exception('User ID cannot be empty.');

    _id = id;
  }

  set username(String? username) {
    if (username == null) throw Exception('Username cannot be null.');
    if (username.isEmpty) throw Exception('Username cannot be empty.');

    _username = username;
  }

  set email(String? email) {
    if (email == null) throw Exception('E-mail address cannot be null.');
    if (email.isEmpty) throw Exception('E-mail address cannot be empty.');
    isEmailValid(email);

    _email = email;
  }

  set password(String? password) {
    if (password == null) throw Exception('Password cannot be null.');
    if (password.isEmpty) throw Exception('Password cannot be empty.');
    password_validator.Password(password).validatePassword();

    _password = password;
  }

  set status(String? status) {
    if (status == null) throw Exception('Status cannot be null.');
    if (status != 'A' || status != 'I') throw Exception('Status must be A or I.');

    _status = status;
  }

  set displayName(String? displayName) {
    if (displayName == null) throw Exception('Display name cannot be null.');

    _displayName = displayName;
  }

  set avatarURL(String? avatarURL) {
    if (avatarURL == null) throw Exception('Avatar URL cannot be null.');

    _avatarURL = avatarURL;
  }

  set biography(String? biography) {
    if (biography == null) throw Exception('Biography cannot be null.');

    _biography = biography;
  }
}