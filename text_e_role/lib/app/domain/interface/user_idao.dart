import 'package:text_e_role/app/domain/dto/user_dto.dart';

abstract class UserIDAO {
  Future<UserDTO> save(UserDTO dto);
  Future<UserDTO> update(UserDTO dto);
  Future<bool> updateStatus(int id);
  Future<UserDTO> searchById(int id);
  Future<List<UserDTO>> searchAll();
}