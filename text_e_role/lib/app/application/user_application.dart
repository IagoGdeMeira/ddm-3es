import 'package:text_e_role/app/service/database/sqlite/dao/dao_user.dart';
import 'package:text_e_role/app/domain/dto/dto_user.dart';
import 'package:text_e_role/app/domain/interface/i_dao_user.dart';
import 'package:text_e_role/app/domain/entity/user.dart';


class UserApplication{
  late IDAOUser dao;
  late User domain;

  UserApplication() {
    dao = DAOUser();
    domain = User(userDAO: dao);
  }
    
  Future<DTOUser> save(DTOUser dto) async {
    return await domain.save(dto);
  }

  Future<DTOUser> update(dynamic id) async {
    return await domain.update(id);
  }

  Future<bool> delete(dynamic id) async {
    await domain.delete(id);
    return true;
  }

  Future<List<DTOUser>> search() async {
    return await domain.searchAll();
  }
}