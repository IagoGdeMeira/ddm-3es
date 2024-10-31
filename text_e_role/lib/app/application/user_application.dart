import 'package:text_e_role/app/service/database/sqlite/dao/dao_user.dart';
import 'package:text_e_role/app/domain/dto/user_dto.dart';
import 'package:text_e_role/app/domain/interface/user_idao.dart';
import 'package:text_e_role/app/domain/entity/user.dart';


class UserApplication{
  late UserIDAO dao;
  late User domain;

  UserApplication() {
    dao = DAOUser();
    domain = User(userDAO: dao);
  }
    
  Future<UserDTO> save(UserDTO dto) async {
    return await domain.save(dto);
  }

  Future<UserDTO> update(dynamic id) async {
    return await domain.update(id);
  }

  Future<bool> delete(dynamic id) async {
    await domain.delete(id);
    return true;
  }

  Future<List<UserDTO>> search() async {
    return await domain.searchAll();
  }
}