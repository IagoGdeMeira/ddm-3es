import 'package:text_e_role/app/domain/dto/dto_user.dart';

abstract class IDAOUser {
  Future<DTOUser> save(DTOUser dto);
  Future<DTOUser> update(DTOUser dto);
  Future<bool> updateStatus(int id);
  Future<DTOUser> searchById(int id);
  Future<List<DTOUser>> searchAll();
}